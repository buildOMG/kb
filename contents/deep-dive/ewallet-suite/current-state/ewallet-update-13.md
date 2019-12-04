# eWallet Update 13

We’ve been very busy since our [last update](https://www.reddit.com/r/omise_go/comments/9wkmj5/ewallet_update_november_12_2018_the_the_light/) and made some good progress on [version 1.1](https://github.com/omisego/ewallet/milestone/2)! We closed out lots of issues; we also shuffled things around, moving some features up to the 1.2 release. Here’s what we’ve worked on over the past 2 weeks:

* Added configuration endpoints to settings management [\#515](https://github.com/omisego/ewallet/pull/515)
* Reset password for standalone eWallet users [\#553](https://github.com/omisego/ewallet/pull/553)
* Refactored transaction request on Android POS Merchant app [\#27](https://github.com/omisego/pos-merchant-android/pull/27)
* Set up CI/CD system for both Android POS Merchant and Android POS Client app [\#31](https://github.com/omisego/pos-merchant-android/pull/31) [\#23](https://github.com/omisego/pos-client-android/pull/23)
* Added Role endpoints to the eWallet [\#519](https://github.com/omisego/ewallet/pull/519)
* Added more tests and some minor changes on Android POS Merchant app [\#32](https://github.com/omisego/pos-merchant-android/pull/32) [\#34](https://github.com/omisego/pos-merchant-android/pull/34) [\#36](https://github.com/omisego/pos-merchant-android/pull/36)
* Reduced decimal precision for amounts stored in PostgreSQL [\#546](https://github.com/omisego/ewallet/pull/546)
* Made metadata optional everywhere [\#538](https://github.com/omisego/ewallet/pull/538)
* Added support for mapped fields in Match Parser [\#534](https://github.com/omisego/ewallet/pull/534)
* Always preload tokens in exchange pair when doing /transaction.calculate [\#532](https://github.com/omisego/ewallet/pull/532)
* Bug fixes and minor improvements to the eWallet [\#511](https://github.com/omisego/ewallet/pull/511), [\#514](https://github.com/omisego/ewallet/pull/514), [\#516](https://github.com/omisego/ewallet/pull/516), [\#522](https://github.com/omisego/ewallet/pull/522), [\#545](https://github.com/omisego/ewallet/pull/545), [\#548](https://github.com/omisego/ewallet/pull/548), [\#552](https://github.com/omisego/ewallet/pull/552)

The last remaining “big” task is completing the [audit system](https://github.com/omisego/ewallet/tree/463-complete-audit-system), which allows any eWallet administrator to know exactly what happened before \(who did what, when and on what\). The codebase still requires some updates before it’s ready for 1.1, mostly adjustments and bug fixes.

Once we wrap up 1.1 we’ll move straight into working on the next release. As a quick preview, the three major features you can expect to see in 1.2 are:

* Ethereum integration
* Complete customizable permissions system
* A revamp/reorganization of the admin panel that will provide a better UX and facilitate the integration of Ethereum-related functionalities.

As always, you can also follow our progress on the eWallet [Waffle board](https://waffle.io/omisego/ewallet) and in our GitHub [Milestones](https://github.com/omisego/ewallet/milestone/2) page.

