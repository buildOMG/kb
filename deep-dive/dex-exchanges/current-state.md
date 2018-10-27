# Current state

{% hint style="warning" %}
_Please note: the OMG Network is still in development, and some details cannot yet be included. This knowledge base will be revised regularly to include updates and additional details._
{% endhint %}

As mentioned in [Plasma Update \#3](https://kb.omgcommunity.org/~/edit/drafts/-LPo0rjQR6oihGGaQlIY/deep-dive/plasma/current-state/plasma-update-3), we held a workshop at the start of September. This workshop was an opportunity for us to reassess how our proposed designs serve the core values of the project and consider how to balance short-term priorities in order to best provide for the long-term viability of the network. We intend as always to deliver on the original OMG vision of a fully decentralized, permissionless, scalable network for uncensorable payments and exchange. Today we’d like to share an update on the progress of the [OMG DEX design](https://kb.omgcommunity.org/~/edit/drafts/-LPo0rjQR6oihGGaQlIY/deep-dive/dex-exchanges/omg-dex-design), and offer some insight into the reasoning behind our approach.

The [roadmap](https://blog.omisego.network/omisego-roadmap-update-94819e20ada2) blog published earlier this year mentioned two phases for the decentralized exchange \(DEX\): the first phase with centralized order matching and on-chain settlement, the second phase moving order matching onto the Plasma chain as well. The design document expands on these required phases, the design, and the reasoning behind the priorities set for each phase of development.

We also want to be transparent about the limitations of the current design. We spent a good deal of time carefully considering the implications of different proposed implementations in the design of the OMG DEX for important factors such as transparency, scalability, privacy, fairness, liquidity and responsiveness. We have laid out what we believe is the best path to achieve the long-term goal of decentralization while also supporting development of a liquid, well operating market in the short term.

**Overview**

In the OMG DEX design and in this post, the term “venue” has a similar meaning to “exchange”. A venue is a place where orders \(to trade digital assets\) are arranged and executed — in other words, a place where a market is provided. Examples of venues include existing centralized crypto exchanges, decentralized exchanges, and traditional stock exchanges.

In its initial phases, the OMG DEX will serve as the base layer for a collection of venues that perform order execution outside of the OMG Network consensus, with provable on-chain settlement on the OMG network \(i.e., order matching is performed off-chain and any order that is either settled or canceled will be processed as a transaction — and incur transaction fees — on the OMG Network\).

![](https://cdn-images-1.medium.com/max/1600/1*WMPIIrJxlH0WJO10KSYSTQ.png)

**Design Goals**

There are many different types of decentralized exchanges being built or launched on numerous platforms. This is a healthy discourse for the ecosystem, but it can be confusing; so we feel it’s important to help our users understand what _we_ mean when we talk about a decentralized exchange. In order to do that, we first need to identify and define what characteristics or _dimensions_ we consider important for an exchange mechanism that is fast, fair and safe.

**Trustless**

Users should be in control of their own assets: they should not need to trust a third party, nor should they need permission from a third party in order to access or use their funds.

While the OMG Network will initially have an operator \(OmiseGO\) rather than a distributed validator set, and venues will initially be operated by central parties, there are layers of security such that users are not trusting any single party to remain honest. If a venue tries to steal user funds, an honest operator will block the misbehavior. Conversely, if the operator misbehaves, an honest venue will bypass the operator and exit user funds to Ethereum. In short, user funds are safe as long as the venue and the operator do not collude. Once the responsibility of consensus becomes distributed across a network of stakers/validators rather than OmiseGO operating as the sole operator, the potential for collusion is diluted proportionally to the size of the validator set.

**Secure**

We consider protection of user funds to be the most critical concern in the design of a decentralized exchange. During the time that venues have custody of user funds on the OMG DEX, user funds are still secured either by the operator or by the child chain consensus. This actually reduces risk for venues as well as its customers. Centralized exchanges expose themselves to operational risk, and potentially legal risk as well, when they take responsibility for the safety of user funds.

By restricting the conditions under which the venue takes control of funds, the total value for which the venue is responsible at any given time is drastically reduced; while the additional layer of security provided by the operator or child chain consensus means that a hack or other attack on the exchange is much less likely to result in loss of funds since there is no single point of failure. We anticipate existing centralized venues will be interested in connecting to the OMG DEX in order to both tap into a wider liquidity pool than is available within a siloed channel, and significantly reduce their own operational risk.

The safety mechanisms described above are detailed in the OMG DEX [design document](https://github.com/omisego/elixir-omg/blob/develop/docs/dex_design.md) and Tesuji Plasma design documents.

**Transparent**

Exchanges should also be fair and transparent. Here transparency refers both to transparency of venue and user behaviour, as well as transparency of market information such as pricing. Where transparency isn’t possible or desired due to the business needs of a venue, correct behaviour should nonetheless be both provable and enforceable.

**Liquid**

In order to build a DEX that supports a liquid market for the OMG Network and to reduce potential latency due to limitations on operator/validator capacity, we’ve chosen to start with support for off-chain continuous markets. Support for continuous markets allows venues to provide a much more flexible and seamless experience for their users: in a continuous market, trades may be executed at any time during a trading session \(24/7 for crypto markets\), as opposed to a call market where buyers and sellers must wait for specific times when a market is ‘called’ to trade. Stock markets and most crypto exchanges are continuous markets; the best known example of a call market would probably be US Treasury Bond [auctions](https://www.treasury.gov/resource-center/data-chart-center/quarterly-refunding/Documents/auctions.pdf).

**Uncensorable**

Everyone should be able to access services that allow them to exchange any digital assets, whether tokenized property, cryptocurrencies, or other tradable tokens. There should be no individual that has the ability to block access to exchange services. Put simply, access to a decentralized exchange should be permissionless.

Censorship resistance is a function of the number and variety of available venues; since there can only be a limited number of venues in the initial design, there are corresponding limitations on censorship resistance in this first iteration.

**Additional Design Considerations**

A constraining factor affecting the design of the OMG DEX is the future computational capacity of stakers. A high speed, central limit order book requires a large amount of memory and CPU processing power. We need to balance the speed and latency of order matching with the target computational load for stakers such that hardware requirements are not burdensome.

By moving order matching off-chain, we move the computational requirements for the processing of the order book away from the operator and validators. However, the operator — and later stakers — will be responsible for validating settlement proofs for every trade, whether completed or canceled. Since processing power is finite, there will be a natural limit to the number of off-chain venues the network can support. These limitations will become more clear as specifics of the Proof of Stake mechanism are resolved and the target specifications \(such as CPU and memory\) for each validator are defined.

We are actively researching an on-chain order book, and particularly how an on-chain, batch-based order book should be implemented to contribute additional liquidity, volume and further censorship resistance, without exceeding the load capacity of the validator set. Simply put, complex state transitions are hard to carry out in Plasma. We plan to implement batch auctions in the latter phase and are researching the details of how it can be done safely and efficiently within the specific context of OMG Plasma.

\*\*\*\*\*

It is important to note that the design of the OMG DEX will continue to evolve as we continue to research the technology required to build our vision. The limit on the number of venues in particular is viewed as a short-term tradeoff in favor of a more efficient and liquid market — not a built-in constraint of the OMG DEX design itself, but a puzzle to be solved in the course of our continued effort to reduce per-transaction computational load.

Finally, it’s worth mentioning that mainnet release of Tesuji Plasma is not dependent on DEX implementation. Even without a DEX layer, Minimum Viable Plasma \(MVP\) and More Viable Plasma \([MoreVP](https://ethresear.ch/t/more-viable-plasma/2160/2)\) support simple state transitions such as payments, as well as providing interoperability between connected wallets.

We invite you to read and discuss the OMG DEX detailed design on our [GitHub](https://github.com/omisego/elixir-omg). We’re very much looking forward to collaborating on this crucial phase of implementation!

