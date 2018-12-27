# Community Update  03— September 2018



September has come and gone! Here are some of the activities we carried out this past month.

**Technical Update**

**OMG DEX**

We held a workshop in Warsaw early September to reassess how our proposed designs serve the core values of the project and consider how to balance short-term priorities in order to best provide for the long-term viability of the network. Read all about it [here](https://blog.omisego.network/omg-dex-update-6245812a7b2d).

**eWallet Suite**

The eWallet team conducted two workshops in Shanghai and Singapore \(see below\) and implemented new features including action tracking, updated the iOS Client Point of Sale App, released iOS SDK 1.1.0-beta1, released the official Helm Charts for Kubernetes, added tests and documentation for omisego-admin module in the Android SDK and upgraded the credo package.

For more details on the latest technical work, take a look at our eWallet Suite September 2018 updates:

* [eWallet Update September 17, 2018: the “What we do in life echoes in eternity” edition](https://www.reddit.com/r/omise_go/comments/9gleas/ewallet_update_september_17_2018_the_what_we_do/)
* [eWallet Update September 3, 2018: the “So where would you rather die? Here? Or in a Jaeger?](https://www.reddit.com/r/omise_go/comments/9cmj4c/ewallet_update_september_3_2018_the_so_where/)

For more technical details and to follow along on the progress, visit our [Github](https://github.com/omisego/ewallet) or [Waffle board](https://waffle.io/omisego/ewallet)!

**Plasma**

As Q3 draws to a close, let’s take a quick look at progress on Tesuji Plasma. Tesuji is the first iteration of Plasma, the foundation on which further iterations will be built. The basic goals for Tesuji as laid out in the roadmap, were as follows:

\* Proof of Authority run on OmiseGO servers

\* Exit to Ethereum for final safety

\* CLI \(command line interface\) to monitor the child chain

\* Multiple currencies \(initially this means ETH and ERC-20\)

\* Atomic swap support

The first four \(PoA, exits, CLI, multiple currencies\) are done and on internal testnet. Atomic swaps are a feature, not infrastructure, so although they are among the list of goals they are not a necessity for launch. When the time comes, we’ll go ahead to regardless of whether atomic swaps are ready to go.

In the process of development, two phases have emerged for Tesuji: Minimum Viable Plasma \(MVP\) which satisfies the conditions above but sacrifices user experience for security to a certain extent; and More Viable Plasma \(MoreVP\) which improves UX while maintaining security, most significantly by removing pesky [confirmation signatures](https://ethresear.ch/t/griefing-vectors-in-confirmation-signatures/2301) from the transaction process.

As mentioned in the post announcing the [publication](https://blog.omisego.network/omg-network-repo-is-now-open-source-5d4376a6c4ef) of the OMG Network Repo, an early alpha version of Tesuji has been on internal testnet since August. The version now on testnet isn’t perfect, but it runs. In this demo of the command line, Alice deposits 2 ETH onto the Rootchain contract. After the deposit has been included, Alice then sends a transaction to Bob from within the childchain. Bob immediately receives 1 ETH.

![](https://cdn-images-1.medium.com/max/2000/1*ud9gHuGG9NoaXBwtHeNSwg.gif)

We’re continuously testing and improving it based on feedback and issues raised by early testers. Once it’s stable we’ll start to give implementers access to the testnet so that they can get to work on integration with support from the OmiseGO team.

**Smart Contracts**

The Plasma team has been productionizing Plasma MVP root chain contracts for the first round of audits. This includes refactoring some of the dependent libraries to the root chain contract and back filling the unit and integration tests. A limited version of Plasma MVP will be audited and the learnings will inform our production of [MoreVP](https://github.com/omisego/elixir-omg/blob/develop/docs/morevp.md).

**Watcher**

The Watcher plays a key role in the construction and correct operation of Plasma, serving as an accessible interface to the child chain. Development on this front has continued, with the JSON-RPC API for transaction submission and fetching, and emitting events for received transactions. We are working on shoring up our test suite, logging, performance metrics and documentation, and block withholding detection.

**Research: Meetups, mass exits, BLS signatures and LearnPlasma**  
We organized a NYC Plasma Meetup, which was the first of a series of small Plasma 101 events where Plasma MVP and Plasma Cash were discussed in depth. These workshops are part of our initiative to educate the community about our work and to grow the OMG research team.

Going forward, our research is now focused on UX improvements and added capabilities. We published a first attempt at a mass exit protocol which essentially is a protocol that makes it possible to start thousands of exits simultaneously. We’re also looking into BLS signatures and the feasibility of SNARK proofs.

We understand that information on Plasma is incredibly dispersed and often times, extremely technical. Too technical! That said, for the non-technical, non-developers who are enthusiastic and interested in Plasma as a framework for building scalable blockchain applications, we encourage you to visit [LearnPlasma](https://www.learnplasma.org/index.html) where all things Plasma and easy-to-understand learning materials are available.

For more details on what the Plasma team has been up to, check out our September 2018 Plasma updates. They also include notes from the Implementers calls:

* [Plasma Update \#4 — September 25, 2018](https://www.reddit.com/r/omise_go/comments/9ipix9/plasma_update_3_september_25_2018/)
* [Plasma Update \#3 — September 10, 2018](https://www.reddit.com/r/omise_go/comments/9eoa7l/plasma_update_3_september_10_2018/)

**Community Update**

As usual, September was a busy month for us, not just at our Bangkok office, but with key team members participating in workshops, talks and meetups around the world. Here are some events we were involved in.

**Ethereum projects meet: Golem, OmiseGO and Hoard, Warsaw, 5 September 2018**

Kasima, our Director of Engineering was at the Ethereum Meetup in Warsaw where he presented the path to More Viable Plasma \(MVP\). The development of Plasma, the level 2 scaling solution has been moving quickly since the release of the whitepaper last year. More Viable Plasma is a specification developed out of the OmiseGO research team.

Other speakers:

* Julian Zawistowski of imapp and [Golem Project](https://golem.network/) introduced Golem, the Ethereum ecosystem and imapp’s role to the audience.
* Aleksandra Skrzypczak of the Golem Project presented the Golem Project and walked the audience through the latest software updates, the use-case pipeline and Golem’s R&D goals. Golem’s SGX solution, Graphene-ng was also introduced.
* Cyryl Matuszweski of [Hoard](https://www.hoard.exchange/), explained how Hoard can help players and game developers through blockchain technology.

![](https://cdn-images-1.medium.com/max/1600/0*VThU4KAPKk_eDZAJ)\*\*\*\*

**Updates from OmiseGO on More Viable Plasma in Warsaw.**

**ETHIS, Hong Kong, 8 September 2018**

David Knott, OmiseGO’s Plasma Researcher presented “Stepping Outside the Square” to enterprises and developers at the [Ethereum Industry Summit: Scalability and Industry Integration \(ETHIS\)](https://ethis.io/). The conference mainly focused on Ethereum technology and industry development. It was a good opportunity for us to share what we have been working on in terms of scalability solutions.

**eWallet Suite and Plasma workshop, Neutrino Shanghai, 11 September 2018**

Following the launch of Neutrino Beijing on the 10th of September, our team conducted an engaging workshop on the eWallet Suite and Plasma the following day at Neutrino Shanghai. Representatives from the eWallet and Plasma teams kick-started the event with introductions to their respective products. The afternoon session was more intense with explanations on the why’s, what’s and how’s of the open source eWallet Suite. The group built chat bots to interact with the wallet. Meanwhile, the Plasma session was an epic three hours of Q&As covering Plasma implementations, decentralized exchanges \(DEXs\), stablecoins, hashed timelock contracts \(HTLCs\) and much more.![](https://cdn-images-1.medium.com/max/1600/0*tq05Jaj89jgDAXHs)  
**The crowd at Neutrino Shanghai gets a brief overview of the OmiseGO Ecosystem.**

\*\*\*\*![](https://cdn-images-1.medium.com/max/1600/0*X7ZvVhabRKDMXlUp)  
**Showcase of the eWallet dashboard at Neutrino Shanghai.**

**eWallet Suite and Plasma workshop, Neutrino Singapore, 21 September 2018**

On 21 September, OmiseGO hosted an eWallet Suite and Plasma workshop at Neutrino Singapore. This is the 3rd workshop with the first one held in Tokyo in August and the second one in Shanghai earlier this month. The workshop drew in a good crowd of developers and projects.

Following introductory presentations to OmiseGO, the eWallet Suite and Plasma in the morning, the afternoon parallel sessions provided participants the opportunity to go in-depth into the implementation of the eWallet Suite and Plasma. We also organized one session on business use cases.

![](https://cdn-images-1.medium.com/max/1600/0*9mHIt3VL9Xyt20Nx)  
**Hands-on, small group session on the eWallet Suite.**

\*\*\*\*![](https://cdn-images-1.medium.com/max/1600/0*JX5-Lu5XUiyazKZx)  
**Developers at Neutrino Singapore get an introduction to Plasma**

What goes on at our eWallet Suite and Plasma workshops? Watch this video to get a glimpse.

**FIN/SUM x REG/SUM, Tokyo, 25–28 September 2018**

Jun Hasegawa, CEO, Omise, attended Japan’s largest fintech summit and conference — [FIN/SUM x REG/SUM](http://www.finsum.jp/index.html) in Tokyo where he was a panelist on ‘The East Asian Crypto Landscape’ panel moderated by Nikkei Inc. Fellow panelists included Coinbase, QUOINE and Tomatsu. FIN/SUM is the largest and most influential fintech summit in Japan where leaders in the global finance and tech industries meet, and disruptive innovation from across the globe is promoted.

![](https://cdn-images-1.medium.com/max/1600/0*VtSE6ZyYrMoQw13x)  
**Jun, CEO of Omise, talks about OmiseGO’s work and his views on the crypto/blockchain tech landscape in East Asia.**

**Interested in working with OmiseGO?**

We are growing our team and would love to hear from you. Check our [careers page.](https://omisego.network/careers)

**What’s coming up?**

* [San Francisco Blockchain Week \(SBFW\)](http://sfblockchainweek.io/): 5–12 October 2018
* [DEVCON IV](https://devcon4.ethereum.org/): 30 October –2 November 2018

