# Plasma Update \#7

## Production

For this sprint, we’ve been almost entirely focused on shipping our first production service for Devcon4! Eagle-eyed watchers of GitHub may have suspected this from the various bug fix PRs and branch names. Most of the work has been into containerizing and deploying the Child Chain and Watcher in a sane, repeatable manner.

A few of the bug fixes were for latency assumptions that differ between development environments on developer machines and real-world deployment environments. This included increasing certain timeouts and handling multiple block submissions per root chain block. We also worked on production monitoring and logging services for the Watcher.

All of this effort was to demo the first full-stack integration of a very early version of the OMG Network at DEVCON. Our friends at Hoard developed [Plasma Dog](http://plasmadog.hoard.exchange/), a (rather addictive) game which utilized our javascript integration library, their own deployment of the Watcher, and an internal testnet of the Child Chain. You can read about the technical details in this fabulous [deep dive](https://blog.hoard.exchange/how-hoard-created-the-first-omg-network-application-plasma-dog-62f139ec3dd4?gi=5d63815c95fa) on the process from Hoard.

Implementation of MoreVP continues to move forward, though the production deployment has taken more attention than we originally expected. These next few weeks will be entirely focused on MoreVP.

## Research
We spent the last two weeks preparing for and attending Devcon4 in Prague, so research slowed down a little. A lot of interesting plasma things we’ve been working on were finally presented - video of all the presentations, including David and Kelvin’s on The State of Plasma, should be available in the next few weeks - so we figured we’d give a quick recap of the most important parts!

## Plasma Prime
We’ve always been aware that the current Plasma MVP design doesn’t scale in the long term, so we’re constantly looking for improvements. Plasma Prime is the name for a series of improvements to Plasma Cash that make it possible to simulate fungible assets. Although the design is far from perfect and there are still plenty of kinks to be worked out, it’s a significant step in the right direction. There’s even already an [experimental client](https://github.com/plasma-group/plasma-prime) out in the wild!

## Plapps
A.K.A. “Plasma Apps”. You can thank Kelvin and Ben Jones for coming up with that term. We’re finally starting to see the construction of [state-enabled plasma chains](https://ethresear.ch/t/plasma-leap-a-state-enabled-computing-model-for-plasma/3539) that make it possible to build applications on top of plasma chains. Again, this work is far from finished but it’ll form the building blocks of the future of plasma as a generalized scaling solution beyond payments and exchange.

## Challenge Economics
We spent some time in the live Plasma Implementers Call talking about the economics of exit challenges. We also chatted about the different strategies clients will follow when submitting challenges. Kelvin published a [full post](https://ethresear.ch/t/strategies-for-plasma-clients/4070) about this a few days ago.

## Plasma Naming Schemes
We had a good five-second debate on stage (and more on our research Slack) about the way we name plasma constructions. Although the plasma naming meme started as an attempt to poke fun at the various Bitcoin forks, it’s also had some serious downsides. Kelvin is planning to write a more long-form post about this to argue the full point and (hopefully) lead to some change that clarifies the plasma namespace. Bad names are confusing when you want to understand what’s is going on!
