# Plasma Update \#4

## Development

#### Smart Contracts

We’re working on productionizing our Plasma MVP root chain contracts for the first round of audits. This includes refactoring some of the dependent libraries to the root chain contract, as well as back filling both unit and integration tests. Once we hit code freeze, we’ll hand off the contracts to Quantstamp and Synthetic Minds for a security assessment.

What we’ll be auditing is a limited version of Plasma MVP. The learnings from the audit will feed into our production implementation of [MoreVP](https://github.com/omisego/elixir-omg/blob/develop/docs/morevp.md). Once the MoreVP root chain contracts are ready for production, we’ll go through another round of audits of the full MoreVP protocol as a candidate for release.

#### Watcher

Development continues on the [Watcher](https://github.com/omisego/elixir-omg/blob/develop/docs/tesuji_blockchain_design.md#watcher), which plays a key role in the Plasma construction. The Watcher serves as a more accessible interface to the child chain. We’ve been developing the JSON-RPC API for the Watcher for transaction submission and transaction fetching as well as emitting events for received transactions. Watcher development includes shoring up our test suite, logging, performance metrics, and documentation.

Since the Watcher plays a critical role in the correct operation of Plasma, we’ve also been working on block withholding detection. If a client detects withheld blocks, they automatically start a withdrawal. We will continue to develop the Watcher API into a rich feature set for all possible interactions that might be necessary with the child chain for proper Plasma operation.

### Research

#### NYC Plasma Meetup

We held our first [NYC Plasma Meetup](https://www.meetup.com/NYC-Plasma-Meetup/events/254656846/) last week. This was the first of a series of small Plasma 101 events that will be held in NYC. The group discussed Plasma MVP and Plasma Cash in depth. We also pointed out some ways that attendees could make real contributions to the Plasma ecosystem! If you’ll be in NYC over the next month or so, you should check out these events [here](https://www.meetup.com/NYC-Plasma-Meetup/).

OMG has always been on the cutting edge of research in the Ethereum space. These workshops are part of our push to educate the community about our work and, of course, to grow the OMG research team. If you have a background in computer science or mathematics and are looking for a fun, challenging, and rewarding job, check out our [Reseacher](https://omise.breezy.hr/p/6040f662364a-omisego-researcher)position!

#### Mass Exits

Since MVP is now in the implementation pipeline, we're moving on to new areas of research focused on UX improvements and added capabilities. We published a first attempt at a mass exit protocol on [ethresear.ch](https://ethresear.ch/t/basic-mass-exits-for-plasma-mvp/3316). This protocol makes it possible to start thousands of exits simultaneously. Although the protocol isn’t optimized, it demonstrates that mass exits are viable even today. We’re looking into things like BLS signatures and the feasibility of SNARK proofs to further optimize what we published. David talked a little bit about research around this area in [Plasma Implementers Call \#14](https://www.youtube.com/watch?v=lGqNTzluX10&feature=youtu.be&t=2429).

#### BLS Signatures

As part of our Proof-of-Stake work \(and stuff like mass exits\), we’re looking heavily into the feasibility of [BLS signatures](https://en.wikipedia.org/wiki/Boneh%E2%80%93Lynn%E2%80%93Shacham) on Ethereum. The BLS signature scheme is special because it supports very efficient [threshold signatures](https://en.wikipedia.org/wiki/Threshold_cryptosystem). In a nutshell, a threshold signature for a set of private keys can only be created if some predefined percentage of those keys signs off. For example, we could require that 67% of validators have to sign off on a block to make it valid. This is exactly what we need in order to scale to hundreds \(or even thousands of validators\).

We compiled and cleaned up some existing work by the community into a GitHub repository [here](https://github.com/kfichter/solidity-bls). This is very much a WIP, a lot is unoptimized or untested, but we’re receiving lots of [great feedback](https://github.com/kfichter/solidity-bls/issues/1) about how to improve the code.

#### LearnPlasma

LearnPlasma got a lot of content updates over the last two weeks. We highly recommend you check out the latest version of the site and tell us what you think! Hopefully, the content on [Plasma MVP](https://www.learnplasma.org/docs/plasma-mvp.html) and [Plasma Cash](https://www.learnplasma.org/docs/plasma-cash.html) helps clarify why we’ve chosen to stick with MVP for initial release. Huge shoutout to the great [contributors](https://www.learnplasma.org/pages/contributors.html) who’ve been helping to add or review content.

**Sparse Merkle Trees**

One of the weirdest pieces of Plasma Cash is something called a “sparse Merkle tree.” Kelvin [published a post](https://medium.com/@kelvinfichter/whats-a-sparse-merkle-tree-acda70aeb837) explaining exactly what a sparse Merkle tree is, and one explaining [how it’s used in Plasma Cash](https://www.learnplasma.org/docs/plasma-cash.html#blocks).

### Plasma Implementers Call \#14 Notes

[0:47](https://www.youtube.com/watch?v=lGqNTzluX10&feature=youtu.be&t=47) - Joseph Poon is looking at ways to reduce Plasma Cash data requirements using collateral. His basic construction requires the operator \(or validators\) lock up a bunch of collateral as bonded promises not to double spend. It’s very similar to previous constructions along the same lines. This happens to works with many validators even better than with single operator, because they’re already locking up a bunch of stake. The amount of capital lockup may be prohibitive, but the operator/validators can charge a fee for this service.

[36:13](https://www.youtube.com/watch?v=lGqNTzluX10&feature=youtu.be&t=2173) - Joseph Poon goes into why the capital lockup construction is a core cryptoeconomic principle. In a blockchain ecosystem you can’t go back in time, so you can always prove something about the past. However, you can’t prove something about the future \(e.g. that the operator will include a double spend\). Capital commitments by the operator can “solve” this by punishing the operator for cheating.

[40:29](https://www.youtube.com/watch?v=lGqNTzluX10&feature=youtu.be&t=2429) - David Knott talks about mass exits, specifically about how we’re thinking about using [BLS signatures](https://en.wikipedia.org/wiki/Boneh%E2%80%93Lynn%E2%80%93Shacham) to allow users in a mass withdrawal to sign off. David also talks about [Fast Withdrawals for Faulty Plasma Chains](https://ethresear.ch/t/enabling-fast-withdrawals-for-faulty-plasma-chains/2909). This construction generally requires more overhead and capital lockup, but is a significant UX upgrade.

[48:16](https://www.youtube.com/watch?v=lGqNTzluX10&feature=youtu.be&t=2896) - David Knott discusses [Challenge Bond Pricing Concerns](https://ethresear.ch/t/challenge-bond-pricing-concerns/2926). Challenges can be front-run, which might mess with the economics around challenges. Probably not a concern in practice.

[49:49](https://www.youtube.com/watch?v=lGqNTzluX10&feature=youtu.be&t=2989) - Georgios Konstantopoulos talks about transaction formats and challenges in Plasma Debit.

