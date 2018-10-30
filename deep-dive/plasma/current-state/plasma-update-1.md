# Plasma Update \#1

Hey! We've heard your requests for more regular communication about Plasma. We think it's really important too. This will become a bi-weekly Plasma update where we outline our latest work. Each update will also come with a summary \(with links\) of the topics in the latest Plasma Implementers Call!

## What we've been working on

#### Carved out [More Viable Plasma](https://ethresear.ch/t/more-viable-plasma/2160)

More Viable Plasma \(“MoreVP”\) has been a huge project for us in the last few months. Building on the original [Minimal Viable Plasma](https://ethresear.ch/t/minimal-viable-plasma/426) specification, we designed a new protocol for withdrawing funds if something bad ever happens. This new protocol greatly improves user experience by removing confirmation signatures and making withdrawals cheaper when the chain is functioning normally!

We’ve implemented a research version of the MoreVP contracts on [GitHub](https://github.com/omisego/plasma-contracts/tree/dev-morevp) and a few other projects have followed suit. We’ve also just about finished review on a [big document](https://github.com/omisego/research/pull/44) that cleans up the original MoreVP post and simplifies the protocol as much as possible.

#### Concepts for [Mass Exits](https://ethresear.ch/t/proving-utxo-sum-validity-for-mass-exits/2023)

In the worst case Plasma MVP requires every Plasma chain user to exit within a short period of time. This causes number of UTXOs that can be safely be withdrawn to also be the number of UTXOs we can safely support on a Plasma chain. More UTXOs means more throughput, so its important that anyone be able to exit many UTXOs.

We’ve designed a few experimental protocols that allow thousands of UTXOs to be exited at the same time. However, these protocols are largely a WIP and we’re still optimizing on a lot of details.

#### Designed [Fast Withdrawals](https://ethresear.ch/t/simple-fast-withdrawals/2128)

When users withdraw funds from the Plasma chain, they’re required to wait for a period of time before those funds become available on Ethereum. Users might not want to wait, so we designed Fast Withdrawals as a way for users to “sell” their withdrawals.

The gist of this mechanism is that users send their token to a special address on the Plasma chain before starting a withdrawal. This creates an ERC721 token that represents the right to receive the value of the withdrawal once it processes. Users can then quickly and simply receive value of their withdrawn funds \(minus a fee in the form of a discount\) by selling this token to any other user.

Withdrawals effectively become tokenized debt, around which a marketplace can be built. It’s really cool and it should greatly improve user experience by speeding up withdrawals. We also don't need to change the Plasma contract itself to support Fast Withdrawals! A draft implementation of the Fast Withdrawal contract is available on [GitHub](https://github.com/kfichter/contract-drafts/blob/master/FastWithdrawal.sol).

#### Designed cheaper [Block Commitments](https://ethresear.ch/t/double-batched-merkle-log-accumulators-for-efficient-plasma-commitments/2313)

We're always focused on making our Plasma contracts as gas-efficient as possible. This is particularly important to keep validator costs low. Currently, a "block root" is submitted to Ethereum every time a Plasma block is created. This regular commitment is what links the Plasma chain to Ethereum.

However, it's expensive to store stuff in Ethereum! That's why we developed and prototyped a way to reduce the cost of submitting block roots by more than 50%. Check out the code [here](https://github.com/kfichter/contract-drafts/blob/master/MMRStorage.sol). We aren't putting the code into production right away, but we'll be experimenting with methods like these after the initial network release.

#### Created [LearnPlasma](https://www.learnplasma.org/)

LearnPlasma is a community effort to share Plasma-related information, developments, and research from around the ecosystem. Lots of teams and individuals are currently working on Plasma. Ideas shared via ethresear.ch, Plasma calls, and other places all over the Internet have been a huge catalyst for development of both the framework as a whole and the OMG network. However, these resources tend to be hard to find and hard to parse, especially for someone who’s still trying to make sense of what Plasma really is.

LearnPlasma was designed for a broader audience and provides both introductions to the basics of Plasma as well as more technical deep dives. LearnPlasma is still very much a work in progress, but you can keep up with development and give feedback over on [GitHub](https://github.com/ethsociety/learn-plasma).

### What's next

#### Proof-of-Stake

We’ll be working on a few key areas of research for the coming months. Our primary focus will be to develop an experimental Proof-of-Stake mechanism for use on the Plasma chain. Luckily, much of the heavy lifting has been done for us already, but there's still plenty of work to adapt existing mechanisms to Plasma. We're absolutely committed to moving the network to PoS as soon as possible.

#### Learning Resources

We’re going to expand LearnPlasma heavily over the course of the next few months. We want this website to become a central learning resource for everyone interested in Plasma. We need your help with this! We’d love to hear what you’d like to learn about Plasma. Feel free to make an issue on [GitHub](https://github.com/ethsociety/learn-plasma/issues) or to make a post to [r/learnplasma](https://reddit.com/r/learnplasma).

#### Optimizations

We're very excited to see how our Plasma contracts behave in the real world. At first, things will probably slow down or break. This means we'll get a chance to figure out our bottlenecks! We'll be spending a lot of time finalizing the contracts we're taking to the mainnet.

We're also exploring some zero knowledge protocols to potentially optimize a few interactions. This is particularly promising in the context of mass exits.

### Plasma Implementers [Call \#12](https://www.youtube.com/watch?v=Wbnr-9euMic) Summary

* Jinglan Wang talks briefly about her \(informative and highly readable\) blog post, “[What is Plasma? Plasma Cash?](https://medium.com/crypto-economics/what-is-plasma-plasma-cash-6fbbef784a)”
* Kelvin introduces [LearnPlasma](https://www.learnplasma.org/), a hub for information about Plasma.
* Georgios Konstantopoulos talks about cryptoeconomic aggregate signatures and BLS signatures for [Plasma XT](https://ethresear.ch/t/cryptoeconomic-signature-aggregation/1659).
* BANKEX is implementing [More Viable Plasma](https://github.com/BANKEX/PlasmaParentContract). It’s not quite ready, but the work-in-progress contracts are available online.
* Johann from Parsec Labs joins the call for the first time. Parsec is working on an [implementation](https://github.com/parsec-labs/parsec-contracts) of both MVP and MoreVP. Johann also has a post talking about the feasibility of [smart contracts on Plasma](https://ethresear.ch/t/why-smart-contracts-are-not-feasible-on-plasma/2598).
* Kelvin talks about [why smart contracts on Plasma are weird](https://medium.com/@kelvinfichter/why-is-evm-on-plasma-hard-bf2d99c48df7).
* More on smart contracts: Joseph thinks DAO-like constructions may be difficult to design without presumptions on data availability. “Hybrid” Plasma chains with certain compromises may be useful to solve these problems. For example, you might build a Plasma chain where in-game assets such as money or items are stored on the Plasma chain, but game state is offline in some centralized server. Joseph thought this might have some parallels in work with Cosmos and [Counterparty](https://counterparty.io/).
* Parsec Labs is working on an [EVM-in-EVM](https://github.com/parsec-labs/solevm-truffle) implementation, forked from work by Andreas Olofsson and an [EIP](https://github.com/ethereum/EIPs/issues/726) by Vitalik Buterin.
* Lots of thinking about Plasma UX:
  * MVP requires users wait one block before spending a UTXO; we want to get rid of that.
  * We need to figure out good mechanisms for storing keys when making Plasma transactions, which will likely require some standards around how wallets interact with Plasma.
  * It might not be realistic to expect some users to be online once a week, so it’s important to design good incentives around outsourced watching.
  * SPV might be hard because it’s expensive to prove that an entire block is valid without simply providing the entire block.
  * Need to figure out good light-client modes that keep funds relatively safe.
* Karl loves central operators. They’re very powerful in the short term, especially because we can kickstart working on Plasma without building P2P nodes.

Thanks for reading! Now, back to work...

Cheers, The OMG Plasma Team

