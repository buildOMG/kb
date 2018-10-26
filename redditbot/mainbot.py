# pip install -r requirements.txt

import praw
import time
from datetime import datetime
import os
import csv
from random import randint
from logzero import logger
import json
import pandas as pd
from pandasql import sqldf
from tabulate import tabulate
import configparser
from progress.bar import Bar
import pprint
import http.client
import urllib.parse
import time

pysqldf = lambda q: sqldf(q, globals())

def UtcNow():
    now = datetime.datetime.utcnow()
    return now.strftime("%Y-%m-%d %H:%M")

def bot_login(config):
    logger.info("Getting config")
    parser = configparser.ConfigParser()
    parser.read('config.ini')
    logger.info('Logging in')
    reddit = praw.Reddit(client_id=parser.get(config, 'client_id'),
    client_secret = parser.get(config, 'client_secret'),
    user_agent = parser.get(config, 'user_agent'),
    username = parser.get(config, 'username'),
    password = parser.get(config, 'password'))
    logger.info("Read only state: %s" % reddit.read_only)
    return reddit

class kbconfig:
    host = ""
    endpoint_key = ""
    kb = ""

def kb_login(config):
    logger.info("Getting KB config")
    parser = configparser.ConfigParser()
    parser.read('config.ini')

    conf = kbconfig()
    conf.host = parser.get(config, 'qnahost')
    conf.endpoint_key = parser.get(config, 'qnaendpoint')
    conf.kb = parser.get(config, 'qnakbid')
    return(conf)

def getSubComments(comment, allComments, verbose=True):
    allComments.append(comment)
    if not hasattr(comment, "replies"):
        replies = comment.comments()
        if verbose: print("fetching (" + str(len(allComments)) + " comments fetched total)")
    else:
        replies = comment.replies
    for child in replies:
        getSubComments(child, allComments, verbose=verbose)


def getAll(r, submissionId, verbose=True):
    submission = r.submission(submissionId)
    comments = submission.comments
    commentsList = []
    for comment in comments:
        getSubComments(comment, commentsList, verbose=verbose)
    return commentsList


def findTheDaily(reddit, masub):
    logger.info('Looking for the daily')
    found = False
    for comment in reddit.subreddit(masub).comments(limit=1000):
        if comment.submission.locked == False and 'daily' in comment.permalink:
            if not found:
                daily = comment.submission.id
                found = True
                logger.info('Daily found')
        if found:
            break
    if not found:
        raise ValueError('Could not find the daily...')
    return(daily)


def bot_run(reddit, masub):
    logger.info('Executing bot')
    limit = 50
    bar = Bar('Looking for any requests', max=limit, suffix='%(index)d/%(max)d - %(percent).1f%% - %(eta)ds')
    for comment in reddit.subreddit(masub).comments(limit=limit):
        if comment.id not in comments_replied_to and comment.submission.locked == False and '!qna' in comment.body:
            #comms = getComments(reddit, masub)
            #rpt = generateReport(comms, masub)
            canReply = True # NOTE: This is hardcoded
            if canReply:
                logger.info('Replying to request')
                question = comment.body.replace('!qna ', '')
                answer = GetAnswer(question)
                try:
                    comment.reply(answer)
                except Exception as e:
                    logger.error(e)
                    time.sleep(60) # Play nice with the Reddit rate limit
                time.sleep(30) # Play nice with the Reddit rate limit
            else:
                logger.warn('Replying DISABLED')
            with open("comments_replied_to.txt", "a") as f:
                f.write(comment.id + "\n")
            comments_replied_to.append(comment.id)
        bar.next()
    sleeps = 1
    logger.info('Going to sleep for %s seconds' % sleeps)
    time.sleep(sleeps)


def getComments(reddit, masub):
    n = 0
    comms = []
    #dailyid = findTheDaily(reddit, masub)
    #for comment in reddit.subreddit(masub).comments(limit=100):
    #dailycomments = getAll(reddit, dailyid)
    #for comment in dailycomments:
    bar = Bar('Processing', max=1000, suffix='%(index)d/%(max)d - %(percent).1f%% - %(eta)ds')
    logger.info('Loading comments')
    for comment in reddit.subreddit(masub).comments(limit=None):
        n += 1
        #if comment.author == red and comment.id not in comments_replied_to and comment.submission.locked == False:
        if comment.body != '[deleted]':
            if comment.author != None:
                comms.append({'redditor':comment.author.name, 'score':comment.score})
        bar.next()
    bar.finish()
    logger.info('Comments loaded')
    return(comms)
    #print('Going to sleep')
    #time.sleep(120)

def getUserComments(reddit, author, lim=None):
    user = reddit.redditor(author)
    comms = []
    if lim is None:
        maxbar = 1000
    else:
        maxbar = lim
    bar = Bar('Processing', max=maxbar, suffix='%(index)d/%(max)d - %(percent).1f%% - %(eta)ds')
    for comment in user.comments.new(limit=lim):
        #pprint.pprint(vars(comment))
        comms.append({'created_utc':datetime.utcfromtimestamp(comment.created_utc), 'redditor':comment.author.name, 'sub':comment.subreddit.display_name, 'score':comment.score, 'banned_by':comment.banned_by, 'controversiality':comment.controversiality, 'removal_reason':comment.removal_reason})
        #print(comment.body.encode('utf-8'))
        bar.next()
    return(comms)


def get_saved_comments():
    if not os.path.isfile("comments_replied_to.txt"):
        logger.info('Creating new reply file')
        comments_replied_to = []
    else:
        with open("comments_replied_to.txt", "r") as f:
            comments_replied_to = f.read()
            comments_replied_to = comments_replied_to.split("\n")
            #comments_replied_to = filter(None, comments_replied_to)
    return comments_replied_to


def generateReport(comms, masub, writefile=False):
    global commsdf 
    commsdf = pd.DataFrame.from_dict(comms)
    N = commsdf.shape[0]
    topN = pysqldf("select '['||redditor||'](https://www.reddit.com/user/'||redditor||')' as redditor, sum(score) as score, count(*) as comments, '[analysis](https://atomiks.github.io/reddit-user-analyser/#'||redditor||')' as analysis from commsdf group by redditor order by sum(score) DESC limit 10")
    botN = pysqldf("select '['||redditor||'](https://www.reddit.com/user/'||redditor||')' as redditor, sum(score) as score, count(*) as comments, '[analysis](https://atomiks.github.io/reddit-user-analyser/#'||redditor||')' as analysis from commsdf group by redditor order by sum(score) limit 10")
    report = []
    report.append("## r/%s 1k league tables" % masub)
    report.append("## Top 10 by comment score")
    report.append(tabulate(topN, headers='keys', tablefmt='pipe'))
    report.append("## Bottom 10 by comment score")
    report.append(tabulate(botN, headers='keys', tablefmt='pipe'))   
    report.append("\n")
    report.append("Generated at UTC: %s using %s comments. [deleted] comments unusable" % (UtcNow(), N))
    if writefile:
        with open('report.md', 'w') as f:
            f.write("\n".join(report))
        logger.info('Report written markdown file')
    return("\n".join(report))

def AskAnswer(conf, question):
    #host = "omqna.azurewebsites.net"
    #endpoint_key = "70f73de7-0125-4bbd-a464-fa3799c23c7a"
    #kb = "282039a9-26fa-4272-85dc-32cceac91928"

    method = "/qnamaker/knowledgebases/" + conf.kb + "/generateAnswer"
    question = {
        'question': question,
        'top': 1
    }
    content = json.dumps(question)
    path = method

    print ('Calling ' + conf.host + path + '.')
    headers = {
        'Authorization': 'EndpointKey ' + conf.endpoint_key,
        'Content-Type': 'application/json',
        'Content-Length': len (content)
    }
    conn = http.client.HTTPSConnection(conf.host)
    conn.request ("POST", path, content, headers)
    response = conn.getresponse()
    return response.read().decode('utf-8')

def GetAnswer(question):
    conf = kb_login('REDDIT_CONFIG1')
    result = json.loads(AskAnswer(conf, question))
    return result['answers'][0]['answer']

def pretty_print (content):
# Note: We convert content to and from an object so we can pretty-print it.
    return json.dumps(json.loads(content), indent=4)


reddit = bot_login('REDDIT_CONFIG1')
masub = 'test'
comments_replied_to = get_saved_comments()
while True:
    bot_run(reddit, masub)
#rpt = generateReport(comms, masub)

if False:
    submission = reddit.submission(id='39zje0')
    print(submission.title) # to make it non-lazy
    pprint.pprint(vars(submission))
    
    # Get a single users data in a dataframe
    comms = getUserComments(reddit, 'Mickey_Thumbs')
    commsdf = pd.DataFrame.from_dict(comms)
    commsdf.to_csv("Mickey_Thumbs.csv")
    pysqldf("select sub, count(*) as cnt, sum(score) as score from commsdf group by sub having count(*) > 2 order by score DESC")

    masub = 'omise_go'
    comms = getComments(reddit, masub)
    rpt = generateReport(comms, masub, True)