# eWallet Update \#1

An update from our eWallet team who have been working around the clock toward production ready release of the eWallet SDK:[![](https://i.redd.it/65k44mljld811.jpg)](https://i.redd.it/65k44mljld811.jpg)

Following last week's [update](https://www.reddit.com/r/omise_go/comments/8v4zgw/ewallet_10_reddit_edition_nearly_there/), which we recommend you read first if you have not already, we're ready to introduce the 1.0.0-pre0 version. From here on out we plan to continue fixing and improving things, but not break them anymore!

As always we take the quality of our releases very seriously, so we would rather take the time to ensure we’re providing great tools than push things out hastily before they are ready. We are looking to the future; our top priority is to create tools that will be useful and secure in the long run, to make decentralized networks and open source platforms that are truly ready to be deployed into the real world. We hope you understand this point of view and share it :\)

[https://github.com/omisego/ewallet/tree/v1.0](https://github.com/omisego/ewallet/tree/v1.0)

What has been done:

* The secret access key has been upgraded from 32-bits to 128-bits \([\#303](https://github.com/omisego/ewallet/pull/303), [\#305](https://github.com/omisego/ewallet/pull/305)\)
* The release procedure OIP has been finalized \([OIP-4](https://github.com/omisego/OIP/pull/4)\)
* Implemented a full permission system for the entire Admin API \([\#275](https://github.com/omisego/ewallet/pull/275), [\#301](https://github.com/omisego/ewallet/pull/301)\)
* The work on an improved release pipeline is nearly finalized \([\#312](https://github.com/omisego/ewallet/pull/312)\)
* Internal exchange bug fixes and improvements \([\#286](https://github.com/omisego/ewallet/pull/286), [\#290](https://github.com/omisego/ewallet/pull/290), [\#291](https://github.com/omisego/ewallet/pull/291), [\#293](https://github.com/omisego/ewallet/pull/293)\)
* Transaction calculation \([\#302](https://github.com/omisego/ewallet/pull/302)\)
* Invitation url domain whitelisting \([\#304](https://github.com/omisego/ewallet/pull/304)\)
* Admin Panel improvements \([\#294](https://github.com/omisego/ewallet/pull/294), [\#296](https://github.com/omisego/ewallet/pull/296), [\#299](https://github.com/omisego/ewallet/pull/299)\)
* Caching Optimization for data layer on Admin panel \([\#287](https://github.com/omisego/ewallet/pull/287)\)
* Real time transaction request and consumption based on websocket \([\#267](https://github.com/omisego/ewallet/pull/267), [\#306](https://github.com/omisego/ewallet/pull/306)\)
* Minor bug fixes and improvements \([\#292](https://github.com/omisego/ewallet/pull/292), [\#297](https://github.com/omisego/ewallet/pull/297), [\#298](https://github.com/omisego/ewallet/pull/298), [\#300](https://github.com/omisego/ewallet/pull/300), [\#307](https://github.com/omisego/ewallet/pull/307), [\#308](https://github.com/omisego/ewallet/pull/308), [\#310](https://github.com/omisego/ewallet/pull/310), [\#311](https://github.com/omisego/ewallet/pull/311)\)
* Work has started on documentation rewrite

The next steps:

* All features planned for 1.0 release are now included. The “1.0.0-pre0” version we’re releasing today can be considered ready to use by the community, and we will happily be providing support to those looking to build with it.
* Since this initial release will be the base for the blockchain integration we will be working on in the coming months \(we can’t wait to get started!\), it is even more important for us to be completely confident in the codebase before proceeding. You need stable foundations before building anything on top, which is even more true when talking about blockchain technology.
* Next week, we’ll be focusing on testing, improving the documentation and put up a Docker distribution that should ease the deployment, the three things which we did not have enough time this week to finalize. We do have to sleep sometimes!

As a part of an ongoing effort to be more connected with the community, we’ll be publishing weekly eWallet updates like the one you’re reading right now.

Keeping the community \(you\) informed and encouraged is part of our mission ❤️

