# import http.client, urllib.parse, json, time

# def AskAnswer(question):
#     host = ""
#     endpoint_key = ""
#     kb = ""

#     method = "/qnamaker/knowledgebases/" + kb + "/generateAnswer"
#     question = {
#         'question': question,
#         'top': 1
#     }
#     content = json.dumps(question)
#     path = method

#     print ('Calling ' + host + path + '.')
#     headers = {
#         'Authorization': 'EndpointKey ' + endpoint_key,
#         'Content-Type': 'application/json',
#         'Content-Length': len (content)
#     }
#     conn = http.client.HTTPSConnection(host)
#     conn.request ("POST", path, content, headers)
#     response = conn.getresponse()
#     return response.read()

# def GetAnswer(question):
#     result = json.loads(AskAnswer(question))
#     print (result['answers'][0]['answer'])

# def pretty_print (content):
# # Note: We convert content to and from an object so we can pretty-print it.
#     return json.dumps(json.loads(content), indent=4)
