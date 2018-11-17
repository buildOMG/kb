# OmiseGO AMA \#4

## Do you think we might see PoA in 2018?

We are already running on proof of authority with OmiseGO as the single operator on testnet, but this question must be asking when we might see PoA on external testnet or when we might start burning tokens. For reasons given in the State of the OMG Ecostystem post a couple of weeks ago, we aren't putting public dates on goals and milestones. No doubt this is frustrating, but giving dates also comes with frustration.

Since we aren't able to provide much useful information for this question, we'll be answering an extra question below.

## When staking first goes live via PoS on plasma, what amount of volume in USD are you expecting/estimating on the network in the timeframe of a year? As pointed out by [/u/Jager\_Master](https://www.reddit.com/u/Jager_Master), the team has repeatedly said they can't give hard numbers. However, there should be a realistic goal in terms of volume the team is shooting for initially, to have made this project worth it. That, or some research/analysis to roughly determine what sort of market share a disruptive technology like this could suck up from the fintech space. Omise raised $25 million through an ICO. With this funding, and further investments by entities such as Global Brain, there should be a clear potential payoff the team is shooting for. Concern for token price is driving most of the negative sentiment in this community, and it would do well for the community to see some analysis/forecasts. For example, Thomas Greco saying that a "one billion dollar marketcap is potentially insignificant" last year was greatly encouraging. The team does not like to discuss price, but us token holders have been pretty much left in the dark when it comes to what we can see in potential for the project in the next couple of years. Of course, those of us left on the subreddit have at least an inkling of confidence in the project or we wouldn't be here. A simple statement like "the unbanked represent 31% of the world's population; we aim to capture at least 20% of that market within the decade" would do wonders to bringing confidence back to the community.

We still feel it is best to not give hard numbers from our research and analysis until we are closer to being able to back them up.

## Where do you see the OmiseGO project in 3 years and what gives you confidence that OmiseGO will prevail over it's competitors?

From the development point of view, we have a deep understanding of the payment tech stack. We know where and how disruption needs to happen. We also have the advantage of being under the same umbrella as Omise Payment; a company that has first-hand experience building and growing a payment business. As such, we understand the payment landscape, particularly in Asia. We understand user behavior - how customers/payees and merchants think and behave. We know the pain points and what needs to be addressed.

We are solving a real and immediate problem – a problem we, as a company face, and also problems users face. Data show that there is a demand for alternative payment methods, and we are in the right place and right time, with a very clear and achievable goal. We have a strong technical design leveraging a public scalable blockchain framework and a team with experience in the tech and financial sectors.

In 3 years we expect the OMG Network to be fully featured, public and decentralized, with a life of its own; while OmiseGO as a company will continue to build volume on the network by providing support to implementers on leveraging the OMG tech stack for their business needs, exploring new and more complex use cases as the technology evolves.

## Is there a formula as to how many tokens will be burnt in the PoA phase \(when it begins\). Will the number of tokens burnt will be a function of volume on the network?

Hi [clairvoyant80](https://www.reddit.com/user/clairvoyant80). [u/jet86](https://www.reddit.com/u/jet86) responded to a similar question a few weeks ago:

> The exact mechanism used for buying and burning OMG has not been finalised, as the team will continue to research the most optimal solution as development of the network continues to progress towards the PoA phase. One option being considered is using a designated contract \([here's an example of a work in progress](https://github.com/omisego/fee-burner)\) to perform the "buy-back-and-burn" of OMG. Sorry that's not the most definitive of answers, but it would be unwise for the team to commit to a particular method too early.

## What are the fundamental distinctions between the ODEX and other DEX implementations \(Kyber, ZRX etc\) and what are the implications for the end user, in terms of liquidity and security? And why do they matter?

There were many factors that were considered when we were working on the OMG DEX design. Each of these factors have effects on such as safety, user experience, liquidity etc. The design takes into account funds safety as a high priority, whilst still creating a market where good liquidity will form.

Two features worth mentioning are:

* When users send funds to a venue when placing an order, the user's funds are kept safe by the OMG Network through 'Restricted Custody'.
* The OMG DEX is designed to be fair and to provide the transparency that is required for quality liquidity

Note that the OMG DEX design will evolve as we make progress on implementation and research on this matter. Greater detail on the DEX design can be found on our [Github](https://github.com/omisego/elixir-omg/blob/develop/docs/dex_design.md) and on our [Medium post](https://blog.omisego.network/omg-dex-update-6245812a7b2d).

The main thing to note is that the ODEX is an integrated layer in a full stack platform, while Kyber, 0x and most other DEXes/protocols have a more specific scope. As such, the ODEX design is tailored specifically to the needs of OMG, and to the priorities we’ve identified for encouraging adoption of the platform.

Kyber and 0x are actually two great comparisons, so let's look at those two. Very concisely, Kyber focuses on providing liquidity and 0x is an open protocol for p2p exchange. Kyber focuses on providing liquidity through a reserves pool - potentially a complement rather than a competitor.

The ODEX’s restricted custody with off-chain order matching works in a similar way to 0x’s relayer model, but with the benefit of the trade flow data from all venues being connected to the OMG Network. Data from all trades executed on venues must be submitted to the OMG Network for settlement; this provides transparency in pricing so users can make more informed choices, provides the security benefits of on-chain settlement as well as more effectively combining the liquidity provided by all participating venues.
