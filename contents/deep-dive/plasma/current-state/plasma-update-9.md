# Plasma Update \#9

### Production

We’re focused on getting MoreVP out the door as quickly as we can. We’ve finished specifying our APIs for MoreVP so that they will require minimal change going forward. From running the watcher for longer than we had before, we ran into an issue with Ethereum reorgs, which was fixed. We also improved the developer start up experience and optimized block submission to the root chain. The bulk of the implementation work, however, continues to be the careful implementation of the MoreVP in-flight exits across the contracts, child chain, and watcher.

The internal testnet rebuild is moving forward well. We’ve mapped out our environments plan and are working through all the tooling necessary to get us to fast and safe continuous deployment of all our services, so we can move quickly while still in the proof-of-authority phase. We had to make modifications to child chain and watcher configurations to allow for automatic deployments. We’ve also improved our smart contract deployment tooling. Next steps will be building our production support services, such as logging, monitoring, and telemetry.

Finally, we’ve been developing the proofs of concept for our DEX designs. We’re excited about what we’ve been able to put together so far and will share it with the world as soon as we’ve worked out all the known security issues.

### Research

#### Zero-Knowledge Systems

ZK systems \(like SNARKs or STARKs\) are quickly becoming more and more feasible. BarryWhiteHat’s amazing work with [roll\_up](https://github.com/barryWhiteHat/roll_up) demonstrated that it’s possible to scale blockchains with zero-knowledge systems right now. As a result, designs for ZK-based applications are starting to pop up all over the research community, and some interesting plasma-related ideas have emerged in the last few weeks. For example, both [SNARK-based](https://ethresear.ch/t/short-s-nt-ark-exclusion-proofs-for-plasma/4438) and [STARK-based](https://ethresear.ch/t/a-sketch-for-a-stark-based-accumulator/4382) improvements to Plasma Prime have recently been proposed.

#### Formalization & Classification

Kelvin’s talk at Devcon4 highlighted the importance of formalization during the plasma research process: the better we can define plasma, the better we can find and verify new plasma-like designs. Two recent ethresear.ch posts have kicked off the formalization discussion. The first of these posts attempts to [classify plasma flavors](https://ethresear.ch/t/plasma-flavors-classification/3892), which is useful if, for example, you’re trying to understand exactly what makes Plasma MVP different from Plasma Cash. The second maps out the [whole history of plasma](https://ethresear.ch/t/plasma-world-map-the-hitchhiker-s-guide-to-the-plasma/4333), and provides an excellent visual history of the development of plasma.

#### Plasma Prime

Lots of hard work has gone into Plasma Prime lately! Several people have been working on [Plasma Prime specifications](https://ethresear.ch/t/plasma-prime-design-proposal/4222). We now have a [practical scheme](https://ethresear.ch/t/short-rsa-exclusion-proofs-for-plasma-prime/4318) for short RSA exclusion proofs, a [sketch](https://ethresear.ch/t/a-sketch-for-a-stark-based-accumulator/4382) for a STARK-based alternative to RSA accumulators, and even a [proof of concept implementation](https://github.com/karlfloersch/research) of the design!

