# OmiseGO AMA \#9

## Are advisors like Vitalik and the likes still involved in development of OmiseGO?

Yes, advisors like Vitalik are still involved in advising OmiseGO. As advising goes, some advisors are more closely involved with certain technical aspects \(we’re still collaborating closely with Vitalik and others on plasma implementation\). Others will advise during certain phases of the project as appropriate, or when advice on their specific area of expertise is sought by the company.

## Are crypto friendly regulations required for increased levels of adoption of the OMG Network? If so, how far are we from crypto friendly regulations in SE Asia, etc.?

It’s not so much that something has changed; more that _nothing_ has changed as far as what we can say in public. We haven’t talked much about conglomerates lately because there’s nothing new that we can talk about in detail, and more vague references will not lead to any useful discussion.

We answered questions on conglomerates in both AMA [\#1](https://kb.buildomg.org/faq/amas/official-amas#are-the-3-conglomerates-rakuten-mizuho-and-huawei-blink-twice-if-the-answer-is-yes) & [\#2](https://www.reddit.com/r/omise_go/comments/9qemoy/omisego_ama_2_october_22_2018/e8n0mrq): 

We have mentioned ShinhanCard more recently as you can see but others we can't release names or more details of until the time is right due to NDAs. When more information can be released, we will be eager for the community to see it.

## What has changed from last year that made you completely avoid the topic of big company \(a.k.a. conglomerates\)?



## Do we have anything to look forward to before the end of this year?



## What is it in the tech of Plasma Prime or some other that compensates for multiple plasma chains and How do you say that multiple plasma chains has become less necessary?

The best way to explain this is to look at exactly what multiple child chains give us. Let's say we add just one more plasma chain to our system \(for a total of two chains\). Now in a way we've just doubled the throughput of our system because we can handle X transactions on the first chain and X transactions on the second chain. In theory we could just keep adding more chains to increase throughput.

But it’s not this simple in practice. One downside of the nested chains approach is that it's fast for people on the same chain to interact, but it's slow for people on two different chains to interact. But the biggest issue is that for each additional chain you'd like to talk to, you need to download the entire other plasma chain. Even if you never interact with people on the other plasma chains, validators still need to download the data for every single chain - that's potentially a huge amount \(terabytes\) of data every year.

Plasma Prime mostly solves these problems with some fancy cryptography that ensures you only ever need to keep track of \*your own money\* \(whereas in Plasma MVP you need to keep track of \*everyone's money\*\). That means we can keep adding more users and more transactions \(increasing throughput\) without really increasing the storage and computational requirements of end users. So not only can we scale just as well as with the nested construction, we can do so in a way that allows people to interact with everyone else in the system without needing to download a bunch more data \(like you would need to do in MVP\).

This still requires the stakers download data that scales proportional to total throughput, but it's a big improvement over the nested design. There's also no delay for users to interact with one another between chains or fragmentation of liquidity \(because it's just one big chain\).

