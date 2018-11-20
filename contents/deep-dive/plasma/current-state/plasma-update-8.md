# Plasma Update \#8

Work continues on MoreVP, particularly on refactoring and implementing the MoreVP exit game in our smart contracts, child chain service, and the Watcher. We’ve spent some time our Child Chain and Watcher APIs for more consistency with the eWallet APIs. Working off feedback from our Devcon4 demo, we’re also refactoring the Watcher for a better developer experience. We’re aiming to make it much easier for someone to run and integrate with the Watcher.

We have also begun a rebuild of our internal testnet for greater robustness and proper production support. Our previous testnet was set up with Plasma Dog in mind. We wanted to keep our first target small in order to avoid red herrings when solving for a given error, and this way we could troubleshoot alongside the application developer \(Hoard\) while we were all together at Devcon4. We’re now able to approach the next iteration with a much greater depth of knowledge based in real experience. We’ve deactivated the Plasma Dog testnet for now, and the game along with it.

This rebuild is structural, rather than a rewrite of any of the core code or contracts which have already been audited. We are putting everything back together in a way that is proactive and forward-looking, in preparation for evolution and iterative development. This rebuild is a separate task from incorporation of MoreVP; it provides a ready framework for MoreVP to be deployed.

Once we're set with a future-ready solution for testnet, the transaction viewer \(and yes, Plasma Dog\) will be connected to the new network.

