# eWallet Update \#11

Some members of the team were at the Devcon last week, supporting the release of the Plasma Dog demo and connecting with other projects in the space. On a more technical note, here are the various improvements we’ve made since our [last update](https://www.reddit.com/r/omise_go/comments/9sg1pp/ewallet_update_october_29_2018_the_and_my_axe/):

* Implemented full verification flow for admin email update \([\#511](https://github.com/omisego/ewallet/pull/511)\)
* Fixed match\_any not being picked up while fetching records \([\#504](https://github.com/omisego/ewallet/pull/504)\)
* Fixed improper error handling for filtering of disallowed fields \([\#506](https://github.com/omisego/ewallet/pull/506)\)
* Fixed filtering bug that returned duplicate records \([\#508](https://github.com/omisego/ewallet/pull/508)\)
* Fixed filtering error on /api/admin/account.get\_wallets \([\#514](https://github.com/omisego/ewallet/pull/514)\)
* Fixed bugs and race condition in the settings system \([\#493](https://github.com/omisego/ewallet/pull/493)\)
* Added configuration endpoints \([\#515](https://github.com/omisego/ewallet/pull/515)\)
* Improved keyword filtering on advanced search on admin panel \([\#512](https://github.com/omisego/ewallet/pull/512)\)
* Fixed bug in login error handling on admin panel \([\#512](https://github.com/omisego/ewallet/pull/512)\)
* Improved UI design for transaction creation \([\#510](https://github.com/omisego/ewallet/pull/510)\)
* Designed admin panel with on-chain properties
* Refactored the Android POS Merchant Application and added more tests \([\#26](https://github.com/omisego/pos-merchant-android/pull/26)\)
* Implemented transaction request support on Android POS Merchant Application \([\#27](https://github.com/omisego/pos-merchant-android/pull/27)\)
* Implemented transaction request support on Android SDK admin panel \([\#75](https://github.com/omisego/android-sdk/pull/75)\)

Coming up: we’re still making our way through the remaining features for 1.1. You can also follow our progress on the eWallet[ Waffle board](https://waffle.io/omisego/ewallet) and in our GitHub [Milestones](https://github.com/omisego/ewallet/milestone/2) page!

