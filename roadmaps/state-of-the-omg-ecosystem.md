# State of the OMG Ecosystem

There have been many developments over the last several months, and it’s time for an updated summary of the respective elements of OmiseGO and the OMG ecosystem — along with the context for what we’re building; the progress that’s been made and what’s on the horizon.

We’re providing a graphic here to reflect the to-date status of major milestones, but we’re not putting dates on it. It’s been our experience that the milestone model has led to a cycle of waiting, speculation, frustration, brief excitement upon release, and then recommencement of waiting, with not enough clarity in between. Instead, we’ve worked with community members on this [tracker](https://github.com/buildOMG/tracker/projects/1) to show progress on a smaller timescale, listing out the tasks to be completed toward each milestone. We hope that this task list, which we will reference in our weekly updates to help you follow along, will make the periods between full-on milestones a bit less mysterious and interminable.  


![](https://cdn-images-1.medium.com/max/1600/0*RoAiZZnFyIkbrXgZ)

We’ll try to provide enough context within this post that a new-ish reader won’t have to read every page of the [Official Guide](https://cdn.omise.co/omg/officialguide.pdf) to follow along, but we’ll also provide some recommended reading to go into more depth on each element.

**What OMG is made of**

We’re building a frictionless, permissionless, trustless payments network as a public good. The OMG Network will serve everyone as a globally accessible decentralized exchange in which value of any type can be transacted. The key components of the OMG Network ecosystem are:

* eWallet Suite and Application Interface
* Plasma — A Blockchain Scalability Framework
* Decentralized Exchange Layer
* Proof-of-Stake Consensus Mechanism

**Application Interface**

**eWallet Suite**

The eWallet Suite is a completely free and open source software toolkit developed by OmiseGO to seamlessly onboard merchants and users to the OMG Network. In the early documentation, this was referred to as an eWallet SDK, but that wasn’t really the whole picture. An SDK \(Software Development Kit\) is a set of tools to build out applications on a certain platform. Since the SDKs \(there are actually 3, one each for Android, iOS and Ruby\) are actually only a component, we’ve started referring to the whole toolkit as the eWallet Suite.

Once connected to Ethereum and plasma, users will be able to send, receive and store cryptocurrencies such as ERC-20, ERC-721, tokenized fiat, and so on. From there, we will expand the capabilities of the OMG Network to support additional currencies, working toward a fully currency agnostic exchange.

Fiat currency will be supported through plugins when cash-in and cash-out partners are onboarded in each target geography. The eWallet will be able to store fiat currency, noting that eWallet providers are responsible for regulatory compliance.

An eWallet is first and foremost a web application. As a means of interacting with the web-based eWallet platform, the Suite also includes:

* API: API stands for Application Programming Interface, and acts as an interface between different software programs \(e.g. the OMG eWallet and a provider’s existing wallet platform\)
* SDKs: Software Development Kits, toolkits for developers to easily build applications on a platform — in this case the eWallet, which will allow seamless integration with the OMG Network. These toolkits are particularly useful for those implementers who do not have the resources to develop specific software for integration with OMG.
* Front end admin panel for easy customization, account creation, token issuance, activity logs and more
* Back end application accessed either using an API to connect an existing application, or SDK \(to build a new app from the ground up\). Both server-level and mobile applications are supported, currently in iOS, Android and Ruby.
* Demo applications — currently not available on any app store, these are instead meant to provide a template for how the eWallet can be implemented.

The full suite of eWallet tools allows anyone to build and integrate a front end interface to mint, deposit, transact, track and withdraw digital assets; with tools for providers to customize apps to their specific needs.

**Integration Libraries**

The integration libraries are another tool to help developers easily build on OMG. These exist in the layer between web apps and the blockchain itself, providing the end to end infrastructure for integrating an end-user application, from application to library to watcher to child chain. The eWallet, as a web app, will also make use of this infrastructure to connect to the blockchain.

**Progress**

**eWallet Suite**:

* eWallet 1.0.0 has been released and is open-source and publicly available, with version 1.1 [in the pipeline](https://github.com/omisego/ewallet/milestone/2). In the current iteration, issuers can mint and send tokens within a local ledger.
* iOS, Android and Ruby SDKs are in place
* Merchant and client side Point of Sale applications are being developed for iOS and Android.

**Integration Libraries**

* Demo applications are being integrated on internal testnet
* JavaScript \(chosen as the first because it’s the most widely used\) library is up and running.

Devcon4 will be a bit of a coming out party for the integration library — friends from another project have built an app that marks the first full stack integration, running on our internal testnet, which will be available for people to play with during the conference.

**Coming Up**

* Integration libraries for other languages and frameworks, starting with elixir
* Blockchain integration for the eWallet beginning with v1.2

**More Information**

* OmiseGO [eWallet GitHub ](https://github.com/omisego/ewallet/blob/master/assets/provider_setup.jpg)repository
* Initial [public demonstration](https://www.reddit.com/r/omise_go/comments/8wnhjq/demo_ewallet_admin_panel/%C2%A0) of the eWallet
* [Waffle board](https://waffle.io/omisego/ewallet)
* [Chat](https://gitter.im/omisego/ewallet) to the eWallet team!

**Plasma — A Blockchain Scalability Framework**

Plasma is a framework for building scalable blockchain applications without sacrificing security. A plasma chain is its own blockchain and can have whatever functionality and consensus mechanism the builder desires. The defining feature and limitation is that all state transitions must be tracked on the root chain \(we’re using Ethereum as our root\); but rather than every individual transaction being submitted to the root chain, many transactions can be squished together and submitted to the root chain as a single state change. Users can exit funds from a plasma chain onto the root chain whenever they want, and need to do so in the event of a malicious child chain to recover their funds.

**Plasma chains are not side chains.** The biggest distinction is plasma’s exit mechanism. Whereas users of a side chain must rely solely on the honesty and security of the side chain, users of a plasma chain have funds secured by the chain’s consensus as well as an interactive exit game that detects malicious behavior. In other words, when a side chain breaks, state is lost; when a plasma chain breaks, state is exited but remains intact.

OmiseGO is researching and developing a specific implementation with the required properties and functions for a decentralized exchange, but plasma design and implementation has been a very collaborative effort across the Ethereum community, with many different designs being explored and implemented by many different teams. Just for reference, here are some of the designs being worked on:

* [MVP \(Minimal Viable Plasma](https://ethresear.ch/t/minimal-viable-plasma/426)\): The MVP specification lays out a utxo payments blockchain.
* [MoreVP \(More Viable Plasma\)](https://ethresear.ch/t/more-viable-plasma/2160): Makes security and UX improvements to the MVP design including removal of confirmation signatures and adds the ability to exit inputs as well as outputs.
* [Plasma Cash](https://ethresear.ch/t/plasma-cash-plasma-with-much-less-per-user-data-checking/1298): Assets deposited into a Plasma Cash chain are represented as non-fungible tokens \(NFTs\). Blocks are different from Plasma MVP, in that each Plasma Cash block allocates a slot for each token. When a token is transacted, a record of that transaction is places at the corresponding slot. Plasma Cash removes Plasma MVP’s exit time constraints and reduces user storage and computation requirements by only requiring users watch their own value.
* [Plasma XT](https://ethresear.ch/t/plasma-xt-plasma-cash-with-much-less-per-user-data-checking/1926): Introduces checkpointing from the plasma chain to the root chain, which allows for periodic finalization of a coin’s ownership in order to reduce the amount of data which must be stored and verified by each user to limit the storage and computation requirements per coin.
* [Plasma Debit](https://ethresear.ch/t/plasma-debit-arbitrary-denomination-payments-in-plasma-cash/2198): A proposal for enabling partial balances \(spending only part of the value of a non-fungible token\) in a Plasma Cash construction by making every token a payment channel between the user and the chain operator.

**Progress**

[Tesuji Plasma](https://github.com/omisego/elixir-omg/blob/develop/docs/tesuji_blockchain_design.md) is the first iteration of OmiseGO plasma-based implementation. The design is based on Minimal Viable Plasma. Tesuji is currently on our internal testnet. Audits are in progress with Quantstamp and Synthetic Minds — those audits have already proved useful as we’ve received and reacted to some preliminary feedback. The internal testnet is an MVP implementation.

**What’s next**

Once our internal testnet has been sufficiently tested and audited, it will move to a public testnet and from there to mainnet. The plans for Tesuji have evolved a bit in light of recent research: in the original roadmap Tesuji was to be launched as an MVP-based implementation, but the decision was made to launch public testnet \(and later mainnet\) with the security and UX improvements offered by MoreVP already incorporated. Tesuji will be considered complete once the network is on mainnet.

**For more on Plasma, see these excellent community-produced resources:**

* [Learn Plasma](https://www.learnplasma.org/), a community-led education initiative
* [What is Plasma? Plasma Cash?](https://medium.com/crypto-economics/what-is-plasma-plasma-cash-6fbbef784a) by Jinglan Wang
* This [primer](https://media.consensys.net/the-state-of-plasma-1-6b48c1e4b295) from Consensys
* This nifty [chart](https://www.learnplasma.org/en/learn/compare.html) comparing different plasma designs
* [Plasma Tesuji](https://github.com/omisego/elixir-omg/blob/develop/docs/tesuji_blockchain_design.md) Github repository
* [How OmiseGO will bring Plasma in everyone’s daily life](https://blog.goodaudience.com/how-omisego-will-bring-plasma-in-everyones-daily-life-45c9d81a3258) by u/pwolf88
* [An introduction to Plasma](https://medium.com/@acb_/plasma-8bba7e1b1d0f) by Alexander Butler

**Decentralized Exchange Layer**

OMG’s DEX layer provides the back end for easy exchange between digital assets on the OMG Network.

We recently put out a [post](https://blog.omisego.network/omg-dex-update-6245812a7b2d) outlining the design for the initial DEX implementation. In its initial phases, the OMG DEX will serve as the base layer for a collection of venues \(platforms where orders to trade digital assets are arranged and executed\) that perform order matching outside of the OMG Network consensus, with provable on-chain settlement on the OMG network. In other words, order matching is performed off-chain and any order that is either settled or canceled will be processed as a transaction on the OMG Network, and have to pay fees accordingly.

The first iteration of the DEX will use a construction we’re calling Restricted Custody, which we settled on as the best compromise between giving users total control of their funds for the majority of the time and keeping as many transactions as possible on chain, without sacrificing liquidity. Users have full custody until they place an order, at which time custody is transferred to the venue until the order is either filled or cancelled. During the time that venues have custody of user funds on the OMG DEX, user funds still have an extra layer of protection in that an attempted malicious act by the venue \(or a hacker\) can be blocked by the operator or by the child chain consensus.DEX Interactions

![](https://cdn-images-1.medium.com/max/1600/0*IPdKM2bkk-Uzio55)

**For more information, see:**

* [DEX Update](https://blog.omisego.network/omg-dex-update-6245812a7b2d) blog
* [OMG DEX Design](https://github.com/omisego/elixir-omg/blob/develop/docs/dex_design.md)

**Consensus Mechanism**

**Proof of Stake on OMG Network**

OMG is specifically purposed for staking on the OMG Network’s PoS \(Proof of Stake\) consensus. OMG is “staked” \(i.e. locked up in a smart contract\) by validator, who run nodes perform consensus to determine the next block to be added to the blockchain. Staked tokens will be locked for a certain period, and can be re-staked after each period. There will be an unbonding period when a staker decides to withdraw to help preserve stability in the validator set.

Honest behavior is incentivized by transaction fee rewards, which are awarded to stakers who behave in line with network consensus. Rewards are distributed in proportion to the amount staked. Misbehaviour is penalized by “slashing” \(i.e. burning staked tokens\) to ensure that faulty behaviour costs more than it’s worth. Advantages of PoS include security by way of redundancy; removal of single points of failure; reduced risk of centralization; and energy efficiency compared to Proof of Work in which massive expenditure of computing power to solve arbitrary problems is an integral part of the consensus mechanism.

In later phases of the OMG Network \(as liquidity and interoperability allow\) we intend for validators to be able to accept fees in any token, including but not limited to OMG or ETH. A validator node will be designed to be light enough to run on modern computer, virtual private server, or cloud server. While OmiseGO validators will not need to stake ETH or act as Ethereum validators, you will need to run a full Ethereum node for root chain security reasons.

**Validator Fees for Stakers**

Fees on the OMG Network will be dynamically determined by supply and demand on the network. Transaction fees will be distributed to validators in proportion to amount staked through the smart contract which governs the staking mechanism.

**Coming Up**

Similar to how the DEX design couldn’t really be finalized until the Plasma chain was in a pretty advanced state, it doesn’t make sense to finalize the PoS design until the DEX design has been built out to some extent. Although we have a general framework, there isn’t much to report in the meantime because that framework doesn’t really get defined in a granular way until the time comes to put it into action — at which time it gets defined pretty rapidly.

**More information:**

* [Proof of Stake FAQs](https://github.com/ethereum/wiki/wiki/Proof-of-Stake-FAQs)
* [Minimal Slashing Conditions](https://medium.com/@VitalikButerin/minimal-slashing-conditions-20f0b500fc6c)
* [OMG Network Validation](https://blog.omisego.network/omg-network-validation-f935523086db) blog post

**GO.Exchange**

Omise **Holdings** has also established a subsidiary which is developing a user-facing exchange platform. GO.Exchange operates completely separately from OmiseGO. It’s important to maintain this separation to ensure that the interests of a specific venue \(even one that is part of the same holdings company\) do not unfairly influence the design of the DEX.

GO.Exchange will serve the important function of onboarding new users to the cryptocurrency ecosystem, serving as a cash-in/out point for users who wish to exchange their fiat for digital assets. The exchange will leverage the OMG Network and restricted custody DEX for trade settlement.

**Business Development**

Although we still can’t share a lot of details, we thought we’d at least include a sketch of our business development activities.

We’re continuing to engage with projects large and small who are interested to build on OMG, and preparing to open up our internal testnet to a select few. We’ve been working on proofs of concept with a few of our larger enterprise users, and one of our partners has a plasma chain running in a test environment. We’ve been focusing on loyalty points as an entry point for enterprise eWallet users who are interested to move onto the blockchain but not ready to jump all the way in. Points are low-risk and don’t have the regulatory complications that come with fiat or even cryptocurrencies, so it’s a good way to test the waters.

We’ve also been developing partnerships with exchange venues \(no, we can’t tell you which ones\) to bring volume and liquidity to the decentralized exchange. We’re working closely with those groups to make sure that the DEX has the features that they need in order to leverage the network effectively.

**That’s all for now!**

We’ve recently opened up a weekly [AMA](https://www.reddit.com/r/omise_go/comments/9sag1u/omisego_ama_3_october_29_2018/) thread on Reddit, where the top five upvoted questions will be answered by the team each week and the answers added to a knowledge base for posterity. Feel free to join us there with questions \(and wherever else you get your OMG news\) and thank you as always for taking this journey with us.

