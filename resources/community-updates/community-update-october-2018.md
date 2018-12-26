# Community Update — October 2018



And if you celebrate, Happy Halloween to you! Here’s what we were up to in October.

#### **Technical Update** <a id="49d0"></a>

**eWallet Suite**

This month, the eWallet Suite team managed to cover quite a bit of ground as well as prepare themselves for Devcon IV.

**eWallet Application**

As complex as it was, the eWallet settings feature was finalized. The team fixed some bug issues with the preloaded exchange pairs, which weren’t loading properly, improved the transaction flow to our iOS point of sale application, released [iOS SDK 1.1.0-beta2](https://github.com/buildOMG/tracker/projects/1#card-14341633) and implemented a support transaction request for an admin module on the Android SDK.

**Android Point of Sale Applications**

For Android, the version number and endpoint address to the profile and sign in pages were added to the Client Application. A balance detail page was implemented as well as primary token setting ability. To improve navigation flow, the team has switched to the Android Navigation Component. Support for transaction requests on the Client Application has been implemented and a new sub-app dedicated to load testing was added.

**iOS Point of Sale and SDK**

A number of key features in the merchant Point of Sale application were added, including, but not limited to, the app icon, launch screen, receive funds and top up. Error handling was improved and the team started to add admin endpoints in the iOS SDK. Other support functions added include transaction request/consumption flow in the admin SDK, swift 4.2 in the SDK and Point of Sale applications and base files for the Point of Sale application.

**What’s in store…**

Next month, the eWallet Suite will be working on the following features:

* Admin permission matrix
* Transaction auditing
* Improving error reporting
* Additions to iOS and Android Point of Sale apps

Again, you can always follow the eWallet Suite team’s progress on [Waffle board](https://waffle.io/omisego/ewallet)**.**

**For more details, read our eWallet Suite updates here:**

* [**eWallet Update October 29, 2018: the “And my axe” edition**](https://www.reddit.com/r/omise_go/comments/9sg1pp/ewallet_update_october_29_2018_the_and_my_axe/)
* [**eWallet Update October 15, 2018: the “Mr. Stark? I don’t feel so good…” edition**](https://www.reddit.com/r/omise_go/comments/9ogqba/ewallet_update_october_15_2018_the_mr_stark_i/)

#### **Plasma** <a id="939c"></a>

**Development**

This past month, we were focused on getting the [Watcher](https://github.com/omisego/elixir-omg#watcher) API ready for deployment on our internal testnet. For those who aren’t familiar, the watcher is a critical component for building apps and for securing the network. In other words, anyone building an app will need to deploy their own watcher. We worked on the deployment tooling and carried out performance improvements to the watcher syncing process and detection of faults \(invalid blocks, invalid exits, block withholding\).

Quantstamp provided preliminary audit feedback revealing a potential attack vector in our Plasma MVP root chain contracts that opens up the possibility that client nodes will consider the child chain invalid and trigger a mass exit. This issue has since been addressed along with other recommendations. We will release audit results once they are finalized.

**Research**

**LearnPlasma**

Adding new content to the [LearnPlasma website](https://www.learnplasma.org/en/) just became a whole lot easier as it is now generated automatically from markdown files.

We invite you to help out with [open issues](https://github.com/ethsociety/learn-plasma) — there are plenty, and community feedback is always welcomed. Also, get paid for contributing to open source work. [GitCoin](https://gitcoin.co/explorer?keywords=ethsociety&order_by=-web3_created) bounties usually get attached onto issues.

**Plasma Cash**

Our Plasma Cash research continues. We’ve been working with other researchers to simplify atomic swap protocol which builds off Vitalik’s [atomic swaps](https://ethresear.ch/t/plasma-cash-minimal-atomic-swap/3409) and [defragmentation](https://ethresear.ch/t/plasma-cash-defragmentation/3410) work.

In tackling the problem of large histories in Plasma Cash, we’ve been spending more time with [RSA accumulators](https://en.wikipedia.org/wiki/Accumulator_%28cryptography%29), which are used to decrease size of proofs users need to send when transferring tokens to each other. We will share updates on this as we get further. In the meantime, people are starting to put these [ideas into practice](https://github.com/matterinc/RSAAccumulator).

**Generalized Plasma**

Right now, app agnostic plasma chains are the holy grail of plasma research and they are incredibly hard to build. We found ourselves at MIT where we participated in a large research workshop to address some of the underlying problems that make generalized plasma hard. As a first step to formalizing plasma, we spent some time trying to come up with a definition. What is plasma? We then had discussions around how generalized plasma chains should actually represent smart contracts.

For more details on Plasma work, read our updates from the links below. They also include notes from the Plasma Implementers’ calls:

* [**Plasma Update \#6 — October 22, 2018**](https://www.reddit.com/r/omise_go/comments/9qkhl5/plasma_update_6_october_22_2018/)
* [**Plasma Update \#5 — October 8, 2018**](https://www.reddit.com/r/omise_go/comments/9ml2ee/plasma_update_5_october_8_2018/)

**State of the OMG Ecosystem + Roadmap**

In our recent blog post, we attempt to summarize the different elements of OmiseGO and the OMG ecosystem, capture key developments over the past months and provide some information on where we’re going — this to provide our audiences some context. It might seem like a repeat of the Official Guide, but this is more succinct and offers updates. Additionally, we included an updated roadmap with key milestones. We’ve been working with community members as well on the [OMG project tracker](https://github.com/buildOMG/tracker/projects/1) to track progress on a smaller timescale. Do check that out and read the full blog post [here](https://blog.omisego.network/state-of-the-omg-ecosystem-75260c71a053).

**Omise Holdings in the news**

**Omise receives investment from Japan’s Global Brain**

\*\*\*\*![](https://cdn-images-1.medium.com/max/1600/0*mUBkjwtnjHsvjfri)  
**© 2018 Omise Holdings**

Our parent company, Omise Holdings announced that it successfully raised an undisclosed funding amount. As part of the B++ series, the investment is led by Japan’s largest private venture capital, Global Brain, with participation from 31 VENTURES, CVC arm of Mitsui Fudosan and returning Indonesian venture capital, SMDV. Omise Holdings and Global Brain are already in partnership on several ongoing foundational projects including the Ethereum Community Fund \(ECF\) and blockchain focused co-working space, Neutrino. Read more [here](https://www.omise.co/omise-funding-led-by-globalbrain). This funding round was carried out by Omise Holdings, but the funds will be used to support all of their projects including OMG.

**Past events**

**Nervos Meet Up, San Francisco, October 8, 2018**

\*\*\*\*![](https://cdn-images-1.medium.com/max/1600/0*OMgQy_sqXemA1-lC)  
**© 2018 Nervos Network**

We were invited to speak at the Nervos Network meet up in San Francisco alongside SKALE Labs, Celer Network, SpankChain and Alacris. It was an educational evening to say the least. Our Director of Plasma Research was there share insights on the latest developments and breakthroughs in scaling solutions, in particular, Layer 2 solutions that operate on top of existing blockchains.

Watch the full clip [here](https://www.youtube.com/watch?v=rRx_UjgZnUw&t=3843s).

**Status Hackathon, CryptoLife, October 26–28, 2018, Prague**![](https://cdn-images-1.medium.com/max/1600/0*TfJR_WohJW15QLXa)

Plasma 101! We were there alongside Status, MakerDAO, Gitcoin POA Network and MyBit, among others. It was an educational [event](https://hackathon.status.im/) to say the least. We provided an overview of Plasma, then progressed to Plasma MVP and Plasma Cash.

In classic hackathon style, the venue was open all night; participants broke off into groups to either work on proper hacks, or just absorb that magical hackathon energy as they tried frantically to finish their Devcon4 slides.

**DEVCON IV, October 30–2 November, 2018, Prague**

We will be at [Devcon IV](https://devcon4.ethereum.org/) in Prague. If you’re attending, stop by our booth to say hi. This year, we are co-boothing with Hoard Exchange. This year’s agenda is packed with many interesting talks covering a range of topics, workshops and tracks including a talk on the illusion of neutrality in system design by Kelvin; a Plasma talk by Kelvin and David; a live Plasma implementers call; and of course, a very special keynote featuring Stewart Brand and two OMG veterans.

**Upcoming events**

* [Singapore Fintech Festival](https://fintechfestival.sg/), 12–16 November, 2018
* [Meetup — Decentralise the future: real world use-cases](https://www.meetup.com/Ethereum-Singapore/events/255906777/), 14 November 2018
* [NODE Tokyo 2018](https://nodetokyo.jp/), 19–20 November, 2018

