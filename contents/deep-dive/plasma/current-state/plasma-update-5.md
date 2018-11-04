# Plasma Update \#5

## Production

This sprint has been focused on getting the Watcher API ready for an internal deployment and end-to-end integration. This includes fixes for bugs encountered when reporting initial deposits in the watcher and when publishing multiple plasma blocks at the same root chain block height. We’ve improved the API for reporting account balances and submitting transactions through the watcher. We’ve also improved performance syncing with the child chain.

We’re deep in our audits of the Plasma MVP root chain contracts with Quantstamp and Synthetic Minds. Once we have the results, we’ll report back on any issues they’ve found and how we’re addressing them.

We made a fix to the root chain contracts to address an attack vector on how `finalizeExits()` performs on long exit queues when there’s insufficient gas to clear all the exits. We now have the ability to use an `_exits_to_process`parameter so that `finalizeExits` can continue to work in the event of very long exit queues.

Speaking of end-to-end integration: we’re putting the final touches on our first integration library before making that repo and npm module \(Node Package Manager, a javascript packaging format\) public as well. We’ve chosen to use javascript for the first library since it’s one of the most accessible and widely-used languages. This is considered an early alpha version; the initial feature set of the library will support deposits into and transactions on the child chain, primarily interacting with the watcher. This library provides the end to end infrastructure for integrating an end-user application, from application to library to watcher to child chain. This is great news for the eWallet team too - this release paves the way for the next steps on blockchain integration.

_Edit: the_ [_omg-js repo_](https://github.com/omisego/omg-js) _is now public!_

### Research

#### Plasma Cash

We’ve been working with a few people on some pretty cool research related to Plasma Cash, building off Vitalik’s [atomic swap](https://ethresear.ch/t/plasma-cash-minimal-atomic-swap/3409) and [defragmentation](https://ethresear.ch/t/plasma-cash-defragmentation/3410) work. Part of this research is a simplification of the atomic swap protocol. The other part of this work is a generalization of Vitalik’s idea of using very small denomination coins to simulate fungible assets in Plasma Cash. These designs are currently being cleaned/written up and should be published to ethresear.ch in the next week.

We’ve also been tackling the problem of [large histories](https://www.learnplasma.org/pages/research.html#shorter-proofs) in Plasma Cash, which is currently the biggest barrier to using Plasma Cash for large-scale use cases. This is a pretty hard problem, and it seems like we probably can’t solve it in a clean way without something fancy \(like maybe [RSA accumulators](https://en.wikipedia.org/wiki/Accumulator_%28cryptography%29)\). We’re looking into this more deeply right now and will continue to update as we get further.

#### RLP Encoding

With the help of the community \(and [GitCoin!](https://gitcoin.co/)\), we managed to bring together a [standardized and tested RLP encoding library for Solidity](https://github.com/bakaoh/solidity-rlp-encode). This makes it possible to [RLP encode](https://github.com/ethereum/wiki/wiki/RLP) things inside a smart contract running on Ethereum, which can be useful for certain Plasma implementations. We’re not using this in production \(not efficient enough\), but we’re making use of it for [More Minimal Plasma](https://github.com/kfichter/more-minimal-plasma), a simplified Plasma MVP smart contract implementation meant to demonstrate exactly how Plasma MVP works. If you’re a developer looking to learn more about Plasma, you should check out the [RootChain smart contract](https://github.com/kfichter/more-minimal-plasma/blob/master/plasma/contracts/RootChain.sol).

### Plasma Implementers Call \#15 Notes

* More work on Plasma Debit! A detailed specification is in the works and should be published soon.
  * Atomic swaps are really hard.
  * Atomic swaps safe from operator griefing are even harder. Griefing is always a potential problem if there’s an information asymmetry.
* People are working on figuring out optimal bond prices. This is a very economics-heavy question and depends on a lot of variables.
* [Optimistic Cheap Multi-Exits](https://ethresear.ch/t/optimistic-cheap-multi-exit-for-plasma-cash-or-mvp/1893/) are one way to reduce the gas cost of withdrawing funds from the Plasma chain.
* There might be a way to derive Plasma Debit from Plasma Cash if there’s a good mechanism for [sibling splits/merges](https://ethresear.ch/t/one-proposal-for-plasma-cash-with-coin-splitting-and-merging/1447).
* Some discussion about what will happen if users lose the information necessary to exit, based on [this ethresear.ch question](https://ethresear.ch/t/how-can-a-user-submit-an-exit-if-he-loses-his-proof/3127). It’s less of an issue in Plasma MVP than in Plasma Cash, but watchtower-like constructions might be able to help.
* Some additional concerns with a Plasma Cash operator using withdrawals to force users to put up a bunch of money in bonds.

