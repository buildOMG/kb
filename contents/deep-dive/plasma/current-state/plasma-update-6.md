# Plasma Update \#6

## Development

The main production focus since our [last update](https://www.reddit.com/r/omise_go/comments/9ml2ee/plasma_update_5_october_8_2018/) has been on getting our watcher deployed to our internal testnet. The watcher is a critical component both for building apps and for securing the network; anyone building an app will need to deploy their own watcher. Having ours deployed enables us to start building out test applications. The watcher itself was already built; so most of the work was on deployment tooling, and in the process we've also carried out a number of fixes to the watcher and child chain. This includes performance improvements to the watcher syncing process and detection of various faults \(invalid blocks, invalid exits, block withholding\).

We received some preliminary audit feedback from Quantstamp, which revealed a potential attack vector in our Plasma MVP root chain contracts: a well crafted attack could cause a deposit block to be considered an operator block. This doesn’t necessarily cause the contract to become insolvent, but does open up the possibility that client nodes will consider the child chain invalid and trigger a mass exit. We have addressed this issue as well as other recommendations from the Quantstamp audit. Results will be released after the audit is finalized.

Our [JavaScript integration library](https://github.com/omisego/omg-js) is becoming more complete, adding the ability to start and challenge exits. Once those features are merged, the library will cover all major features of Plasma MVP.

We’ve also broken ground on our More Viable Plasma work. We’ve done a lot of refactoring and testing of the Plasma MVP root chain contracts in preparation for MoreVP implementation, which will be our focus over the next few weeks.

### Research

### LearnPlasma

Lots of new updates to [LearnPlasma](https://www.learnplasma.org/en/) went out last week! The whole website is now generated automatically from markdown files, so adding new content is easier than ever. If you’d like to help out, there are [plenty of open issues](https://github.com/ethsociety/learn-plasma) that could use community feedback. A few more [Good First Issue](https://github.com/ethsociety/learn-plasma/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22) tags will go up in the next few days, and [GitCoin](https://gitcoin.co/explorer) bounties usually get attached onto the issues if you’re looking to get paid for contributing to open source work!

### Plasma Cash

Some cool Plasma Cash research that had been in the works for a long time was published last week. One of the more interesting developments is the use of [RSA accumulators](https://ethresear.ch/t/rsa-accumulators-for-plasma-cash-history-reduction/3739) to [decrease the size of proofs](https://www.learnplasma.org/en/research/#shorter-proofs) users need to send when transferring tokens to each other. We talked a little bit about this last week, but we’re going to spend the next week playing around with these ideas a little more and see how easy they are to implement. People are already starting to put these [ideas into practice](https://github.com/matterinc/RSAAccumulator)!

### Generalized Plasma

We participated in a large research workshop at MIT last weekend and tried to tackle some of the underlying problems that make generalized plasma so hard. App agnostic plasma chains are pretty much the holy grail of plasma research right now, and we’ve already spent a lot of time looking at [why they’re so hard to build](https://medium.com/@kelvinfichter/why-is-evm-on-plasma-hard-bf2d99c48df7). We’re now starting to see people working on [early designs](https://ethresear.ch/t/plasma-leap-a-state-enabled-computing-model-for-plasma/3539) for these chains, so it made sense to revisit the biggest challenges.

We first spent a lot of time trying to come up with a definition for what plasma actually _is_. Formalizing plasma is the first step in trying to explore the whole tradeoff space when designing plasma chains \(e.g. what makes Plasma MVP behave differently than Plasma Cash?\). This probably sounds very abstract, but it can be extremely helpful in discovering new tradeoffs that work better for different use cases.

We also put some thought into how generalized plasma chains should actually represent smart contracts. Ethereum represents things like ownership in a [sort of weird way](https://medium.com/@kelvinfichter/looking-at-ownership-in-the-evm-6e6914d341d), but luckily we can do a lot better when we’re designing the chain from scratch. This work also has applications to stuff like [rent](https://ethresear.ch/t/draft-position-paper-on-resource-pricing/2838) and [sharding](https://github.com/ethereum/wiki/wiki/Sharding-FAQs)!

### Notes from Plasma Implementers Call \#16 \(Video not yet posted\)

* [RSA accumulators](https://www.youtube.com/watch?time_continue=3523&v=IMzLa9B1_3E) can be used to [reduce history size in Plasma Cash](https://ethresear.ch/t/rsa-accumulators-for-plasma-cash-history-reduction/3739).
  * Original paper [here](https://link.springer.com/chapter/10.1007/3-540-69053-0_33).
  * Quick and dirty RSA accumulator smart contract implementation [here](https://github.com/matterinc/RSAAccumulator/).
  * All things that go into the accumulator must be prime numbers.
  * Proof of inclusion requires the cofactor of the element in question.
  * Proof of exclusion requires inclusion of something with a remainder that would necessarily exclude the element in question.
  * Contract must assign each coin to a unique prime.
  * Need to figure out the best methodology for accomplishing this. Maybe hashing to primes?
  * Requires a collision resistant hash function, some discussion about this [here](https://twitter.com/BobMcElrath/status/1049313723989549058).
  * We can’t let the user provide the number because [Carmichael numbers](https://en.wikipedia.org/wiki/Carmichael_number) can trick [primality tests](https://en.wikipedia.org/wiki/Primality_test).
  * Maximal [Prime gaps](https://en.wikipedia.org/wiki/Prime_gap) mean we can take the coin ID, multiply by a large constant \(26k\), and search for the next prime \(inside the contract\).
  * Q: How expensive is this?
  * Q: How does this work for many small coins \(i.e. recent Plasma Cash work\)?
* Can avoid the coordination headache of [Mass Exits](https://ethresear.ch/t/basic-mass-exits-for-plasma-mvp/3316) with simpler, smaller “exit transactions.”
  * A bunch of people basically burn their UTXOs and start a withdrawal to a smart contract.
  * Seems to be generally similar to [optimistic cheap multi-exits](https://ethresear.ch/t/optimistic-cheap-multi-exit-for-plasma-cash-or-mvp/1893) mixed with [simple fast withdrawals](https://ethresear.ch/t/simple-fast-withdrawals/2128).
* [Plasma Leap](https://ethresear.ch/t/plasma-leap-a-state-enabled-computing-model-for-plasma/3539) is under development!
* Simulating EVM execution inside the EVM is still hard.
  * Especially making sure the transactions are small enough to be executed.
  * Have to have a smaller gas limit.
  * Q: Why not use something like [txvm](https://blog.chain.com/introducing-txvm-the-transaction-virtual-machine-5e4c9ef1478f)?
  * Using the EVM lets us check that the spending conditions are the same by hashing the contract.
* Ethereum has a strange model for handling state.
* ETH is the only “first class citizen” when it comes to transferring value.
* Maybe we should be able to transfer ERC20s and 721s along with function calls, just like in ETH.
* EF research workshop over the weekend.
* Plasma 101 stuff.
* Talked a little bit about mapping out layer 2 in general.
  * Core features of layer 2 solve: data availability, transaction ordering, state transition validity.
  * Each layer 2 solution solves this differently.
    * State channels via unanimous consensus.
    * Plasma via state commitments.
    * Sidechains via trust assumption on consensus mechanism.
    * We should explore the layer 2 tradeoff space in more depth.
    * A data availability layer could be cool. [Celer](https://celer.network/) seems to have something like this \(“state guardian network”\).

