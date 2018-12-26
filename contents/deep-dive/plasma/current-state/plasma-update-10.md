# Plasma Update \#10

### [Plasma Update 10, Part 1 - December 17, 2018](https://www.reddit.com/r/omise_go/comments/a776en/plasma_update_10_part_1_december_17_2018/)

### [Plasma Update 10, Part 2 - December 20, 2018](https://www.reddit.com/r/omise_go/comments/a7yo24/plasma_update_10_part_2_december_20_2018/)

[**Part 1**](https://www.reddit.com/r/omise_go/comments/a776en/plasma_update_10_part_1_december_17_2018/)

This post covers production only - the research update wasn’t ready for press time so we’ll be posting that tomorrow.

It’s dash to the holidays - and it’s been a productive sprint and we’re trying to get as much done as we can before the new year.

After all the refactoring, we’ve implemented the More Viable Plasma in-flight exit for ETH in our root chain contracts. This is a big step forward for us, as it clears a major hurdle toward integration. With this out of the way, integration of the child chain and watcher with the updated contract can now move forward.

We’ve also finalized our updated child chain and watcher APIs so that they are both internally consistent and consistent with the eWallet. We now have a consistent OmiseGO-styled API format across all our services. This will make integration faster, easier, and generally more pleasant to work with.

The rebuild of the internal testnet is on track to be finished this week. We now have the entire tool chain in place to easily deploy new iterations of the network, along with all the needed production support services such as metrics, telemetry, alerts, and logging. This testnet will be made available to early partners immediately. We will initially deploy Minimal Viable Plasma; this will be a relatively small window while we prove out all of our tooling. Once all the feature development finishes for More Viable Plasma, we’ll quickly upgrade the testnet \(still internal\) to MoreVP - this is the version that, once we’re satisfied with it, goes on to become the public testnet.

That takes us right into the next year. From everyone on the plasma team, we wish everyone a happy holiday season, whatever you might choose to celebrate!

[**Part 2**](https://www.reddit.com/r/omise_go/comments/a7yo24/plasma_update_10_part_2_december_20_2018/)

First, our apologies for the delay in posting this second installment - it's a very busy week as everybody tries to knock out their to-do lists before the holidays.

Plasma researchers converged at [ETHSingapore](https://ethsingapore.co/) over the weekend of December 7-9. As usual, this convergence provided the opportunity for researchers to consolidate their recent findings and push forward with some new ideas.

Plasma Prime was the flavor of the week, and one of the biggest challenges continues to be how to keep histories as compact as possible. There has been something of a laser focus on this since it’s probably the biggest challenge before Plasma Prime is ready to go to market. It will be the subject of a lot of the research, modeling and experimentation over the next few weeks, until there’s some kind of consensus on the optimal way to go about it.

For a bit of background on that: somewhat counterintuitively, it’s far easier to prove succinctly that a coin has been spent than to prove that it has not been. To prove a spend you only need to reference one block in order to verify a spend transaction \(the block in which the transaction occurred\), while proving that a coin has not been spent requires verification that the coin hasn’t been unspent in every block between its deposit onto the Plasma chain to the head of the Plasma chain. This means that if you want to spend a coin that has been stored in your account for a year, it’s necessary to verify a year’s worth of blocks in order to be sure that the spend is valid...which is a lot of blocks.

We \(and by we, we mean the whole cohort of plasma contributors, not just OmiseGO\) haven’t settled on the ideal way to address this. We’re still evaluating whether we’ll eventually go with the [RSA accumulator](https://ethresear.ch/t/rsa-accumulators-for-plasma-cash-history-reduction/3739) approach that was proposed early on in Plasma Prime research for reducing the history size that proves that a spend of a given coin hasn’t occurred. We’re also looking into Snjax’s proposal to use [SNARKs/STARKs](https://ethresear.ch/t/plasma-prime-design-proposal/4222/9) as an alternative to Plasma Prime’s RSA accumulators.

Of course, researchers love a challenge. We're looking forward to solving this puzzle and sharing the results - and here's to another year of discoveries!

Please note that we'll be a bit quiet over the holiday weeks to give our team some breathing room to spend time with their families and recharge. Our regularly scheduled updates will resume on January 7.

