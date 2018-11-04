# Roadmap Update

![](../../.gitbook/assets/image%20%281%29.png)

We heard your confusion about spoons, timelines, parallel developments and milestones and we’ve done our best to address them here. The visual roadmap above is an overview of what we are building and our progress to date. We’ve been through many iterations of this roadmap graphic since embarking on the quest for clearer communications in response to your feedback.

It is important to note that in the graphic, boxes next to each other do not signify milestones being released simultaneously. Roadmap tracks and milestones are being built in parallel and not necessarily in sequence — and of course, in reality, tracks intersect and milestones interact.

We’ll be updating this roadmap as development progresses, milestones are achieved and new features are introduced to the OMG Network. We will maintain a roadmap [repository](https://github.com/omisego/roadmap) on Github as well, that developers and others who think in terms of actual workflow may find more useful.

We are continuously evaluating the relative priorities of the milestones. Milestones that are more than one release ahead may be subject to change and as new information becomes available, priorities may also shift. It’s a dynamic, evolving process.

**Token Sale**

_COMPLETED Q2, 2017_

OmiseGO raised $25 million in Initial Coin Offering \(ICO\).

**Airdrop**

_COMPLETED Q3, 2017_

5% of total OMG supply was airdropped \(automatically deposited\) at block height 3988888, to all ETH addresses that had a balance greater than 0.1 ETH.

\(Please note that this milestone was COMPLETED in September 2017. Other entities such as exchanges or wallet providers may choose to airdrop OMG to their users, or airdrop other tokens to OMG holders as in the case of the Cosmos DEx spoon; but there are no future airdrops of OMG tokens planned by OmiseGO and anyone claiming otherwise is, without exception, trying to steal from you\).

**Decentralized Exchange \(DEx\) Infrastructure**

The DEx on the OMG network is back-end infrastructure to allow currency-agnostic asset exchange between all integrated wallets.

While we will continue to keep you updated on the progress of the Cosmos DEx, we will no longer be including milestones related to Honte or the Cosmos DEx on the OMG core roadmap since the timeline of the Cosmos DEx will be largely contingent on the development of [Cosmos](https://cosmos.network/roadmap) itself.

**Tendermint DEx \(Honte\)**

_Eliminated from OMG roadmap — Spooning to Cosmos DEx_

Honte was a Tendermint construction which was being developed to provide sufficient throughput and a proof-of-stake \(PoS\) for early implementation of the OMG network while Plasma was still in the research phase.

As announced in this [post](https://blog.omisego.network/o-m-forking-g-e6925aca9c96), Plasma progressed more quickly than expected. As a result we decided to stop work on Honte to focus on Plasma. All research and code related to Honte is available on our [Github](https://github.com/omisego/honted), but please note it is for research purposes only.

**Cosmos DEx**

_Removed from OMG roadmap going forward_

The OMG token will be “spooned” soon after the Cosmos hub launch. Put simply, a snapshot of all balances will be taken at a given block height, and every address holding OMG at that time will receive an equal quantity of the Cosmos DEx staking token \(not to be confused with ATOMs — the Cosmos DEx will have a separate token\). As stated will give at least 2 weeks’ notice before the snapshot.

We will continue to work closely together with the Cosmos team to build a parallel DEx on Cosmos. The Cosmos DEx will use a [Tendermint](https://tendermint.com/) PoS construction, and you can start learning today how staking will work on Cosmos! Join the Cosmos validators room on Riot: [https://riot.im/app/\#/room/\#cosmos\_validators:matrix.org](https://riot.im/app/#/room/#cosmos_validators:matrix.org)

**Non-custodial Plasma DEx**

_In progress — ETA Q4 2018_

The implementation of the decentralized exchange is split across two phases.This phase will maintain a centralized service to provide order matching, but users will have custody of their funds with non-custodial order settlement on the OMG Plasma chain. Multiple currencies will be supported, including Eth and ERC20.

**Full DEx on Plasma**

_Upcoming — ETA TBD_

In the second phase we will fully decentralize the exchange by moving the order book and order matching into the Plasma chains and decentralizing the order matching process.

**Additional Enhancements**

_Ongoing, features will go to production as they become ready_

There are use cases where non-fungible tokens are effective, such as ticketing or unique in-game items. We will ensure that users have a wide range of functionalities with non-fungible tokens \(e.g., ERC20s\), including:

* Exchange of Non-fungible tokens
* Removal of confirmation messages in Tesuji Plasma
* Recurring payments
* Conditional payments — Where payments are only made when a condition such as a date and time has passed, or when multiple signatures are present
* Order blinding
* Front-running protection

**Scalable Blockchain**

The blockchain track encompasses progress on Plasma scaling, proof-of-stake consensus and integration with the Ethereum blockchain.

Increased complexity comes with increased risk, which is why we’ve chosen to start with the simplest possible consensus mechanism: Proof of Authority \(PoA\), with OmiseGO as operator. Once we have a battle-tested foundation, we will transition into hybrid Proof of Stake \(PoS\) and ultimately full PoS.

Though in the majority of PoA chains operators profit from transaction fees, we’ve chosen not to. Our intention is that any profits to OmiseGO from the network will come from staking, in the same way as any other stakers. Transaction fees are necessary in order to deter DDoS attacks \(intentional overloading of the network with spam transactions\). However, profits from fees during the PoA phase will be used to buy OMG tokens which will then be burned \(permanently removed from circulation, resulting in a decrease in total supply\).

As mentioned above, standard practice is to provide an ETA for one milestone out. So although we are actively developing the PoS mechanism, we will not be assigning an ETA until our initial PoA implementation is closer to release.

**Scalable Blockchain Major Milestones:**

**Plasma MVP**

_DELIVERED Q1 2018_

The first Plasma Minimum Viable Product \(MVP\) technical specification was [announced](https://blog.omisego.network/construction-of-a-plasma-chain-0x1-614f6ebd1612) in January of 2018. Proof of Concept \(PoC\) has been created and are being iterated upon.

**Plasma Cash**

_Ongoing_

[Plasma Cash](https://karl.tech/plasma-cash-simple-spec/) is a Plasma construction, first proposed in March 2018, which turns fungible assets into unique “coins” on the root chain. This increases security and usability by:

\(i\) removing the ability for the operator to print money fraudulently,

\(ii\) reducing time constraints, and

\(iii\) only requiring users to watch their own assets as opposed to the entire Plasma chain.

We are creating a Proof of Concept to explore the gritty details of how these improvements can be incorporated into the OMG protocol.

**Initial Plasma implementation \(Tesuji\)**

_In Progress — ETA Q3 2018_

The initial implementation of Plasma will enable:

* Proof-of-authority \(PoA\) consensus with OmiseGO as operator
* Exit to Ethereum for security
* Command Line Interface \(CLI\) to monitor the child chain
* Atomic swap support
* Support for Eth and ERC20

**Hybrid PoS**

_Upcoming_

This milestone will commence the phase-in of staking. Validators and the operator \(OmiseGO\) will share the responsibility of creating and validating Plasma chain blocks.

**Full PoS**

_Upcoming_

In full Proof of Stake, the operator will be removed and stakers will have full responsibility for block creation and validation.

**Application Interface \(eWallet SDK\)**

The free, open source eWallet Software Development Kit \(SDK\) will allow anyone who needs online asset exchange to connect seamlessly to the OMG Network.

The SDK is constructed in anticipation of iterative enhancements, with many being worked on concurrently. Beyond beta and 1.0 releases, we will put things into production once they become ready, although we have grouped feature categories below for ease of interpretation.

The code for the eWallet SDK may be found in our [GitHub](https://github.com/omisego/ewallet).

Aji \(cash in/cash out support and access points\) is considered a separate milestone as it is not only a question of product design and development but requires collaboration with implementers, partners and Omise’s existing front-end operations.

**eWallet SDK Major Milestones:**

**Fuseki — eWallet SDK Beta**

_DELIVERED Q1 2018_

Fuseki is the first step to onboard users: a working eWallet SDK with basic functionalities.

Fuseki delivered:

* A server and client SDK for eWallet providers
* A local database ledger that may be used to issue and make transactions using tokens
* A working demo of a mobile shopping application created using the SDK

**Sente — eWallet SDK 1.0 release**

_In progress — expected Q2 2018_

Reaching Sente means that the SDK will be considered production ready, meaning wallet providers can begin to build functional apps with it — although we will continue to add features which will allow wallet providers the flexibility to enhance, add, and customize payment solutions for any number of emerging use cases.

We have begun to incorporate feedback from users on the beta of the eWallet SDK, including a re-designed administrative dashboard and transaction request flow \(QR codes\) to enable peer-to-peer payments between users. Once these enhancements have been made the SDK will leave the beta phase. As always, it will remain open source and free for anyone to build on.

**Additional features under development:**

_Ongoing, features will go to production as they become ready_

**Interconnectivity**

* Private contracts \(eWallet to eWallet direct communication\)
* Finalize exchange design \(internal and inter-wallet\)

**Blockchain Integration**

* Ethereum Integration
* Key management
* Custody configuration
* Plasma Integration

**Cash in/Cash out \(Aji\)**

_In progress — expected Q4 2018_

The Aji milestone will bring cash-in/cash-out functionalities via the ewallet SDK plugin. Users will be able to withdraw and deposit fiat in the form of cash, debit or credit to and from their wallets. The Omise Payment Gateway can support debit or credit transactions for partners that have built a wallet using our SDK library.

**Exchange Subsidiary**

As Jun outlined in [Strategy vol. 02](https://blog.omisego.network/strategy-vol-02-89a4d8476eed), Omise \(the parent company, not OmiseGO\) is creating a new subsidiary which will build a network of front-end exchange platforms. This effort will be carried out by a team independent from OmiseGO and will not use any funds from the OMG token sale.

The first step, currently underway, is acquiring centralized exchanges. This network of exchanges will then be used to enhance the OMG network with:

* Support for cash in/cash out from user wallets
* Feed liquidity into the DEx layer on the OMG network
* Generate initial transaction volume for stakers to validate
* Equip the DEx with various capabilities, like order-book matching

**Tengen \(Goal\)**

The Tengen milestone is the “end game” milestone when the OMG network will be able to support sufficient transactions per second to compete with traditional financial services, have a decentralized exchange with cash-in/cash-out capabilities and interoperability with different blockchains.

We want to thank the community again for your support, particularly those who have actively contributed to advancing research on key components of the OMG Network, and for your patience as we worked to get this roadmap right. We will always welcome your feedback on how to make our communications clearer and more useful to our community.

Stay engaged for further updates as they develop.

