# eWallet Update \#9

Since the [last update](https://www.reddit.com/r/omise_go/comments/9gleas/ewallet_update_september_17_2018_the_what_we_do/), we’ve compiled the remaining issues to be resolved before the [v1.1 Milestone](https://github.com/omisego/ewallet/milestone/2) and are making our way down that list. Once all these are done, we’ll release a new version of the eWallet. Here are some of the tasks we’ve checked off so far:

* Fixed bugs in Create Transaction request form \([\#459](https://github.com/omisego/ewallet/pull/459)\), admin panel prefill address, \([\#471](https://github.com/omisego/ewallet/pull/471)\) and a bug where exchange pair tokens weren’t preloaded properly in consumptions \([\#497](https://github.com/omisego/ewallet/pull/497)\)
* Fixed admin and user email verifications [\#466](https://github.com/omisego/ewallet/pull/466), [\#468](https://github.com/omisego/ewallet/pull/468), [\#473](https://github.com/omisego/ewallet/pull/473)
* Implemented the basics for action tracking in the eWallet, including tracking for creation and update of users and invites. [\#457](https://github.com/omisego/ewallet/pull/457)
* Fixed user endpoint pagination [\#456](https://github.com/omisego/ewallet/pull/456)
* Docker setup guide improvements [\#452](https://github.com/omisego/ewallet/pull/452), [\#475](https://github.com/omisego/ewallet/pull/475)
* More work on advanced filtering [\#440](https://github.com/omisego/ewallet/pull/440)
* Started to implement a settings system [\#493](https://github.com/omisego/ewallet/pull/493)
* Introduced overlays, simple modules containing metadata, and added advanced filtering to all list endpoints [\#486](https://github.com/omisego/ewallet/pull/486)
* Improvements to the eWallet’s Docker setup instructions [\#475](https://github.com/omisego/ewallet/pull/475)
* Bug fixes and minor improvements to the eWallet [\#478](https://github.com/omisego/ewallet/pull/478), [\#479](https://github.com/omisego/ewallet/pull/479), [\#480](https://github.com/omisego/ewallet/pull/480), [\#483](https://github.com/omisego/ewallet/pull/483)

We’ve also continued work on our sample apps, which are shaping up nicely:

**iOS Point of Sale and SDK**

* Added key features in the merchant Point of Sale application including: app icon and launch screen \([\#22](https://github.com/omisego/pos-merchant-ios/pull/22)\) receive funds \([\#12](https://github.com/omisego/pos-merchant-ios/pull/12)\), top up \([\#13](https://github.com/omisego/pos-merchant-ios/pull/13)\), “More” view and biometric authentication \([\#14](https://github.com/omisego/pos-merchant-ios/pull/14)\), update account \([\#15](https://github.com/omisego/pos-merchant-ios/pull/15)\), transaction history \([\#16](https://github.com/omisego/pos-merchant-ios/pull/16)\), transaction requests instead of transactions to improve security by enabling user confirmations for certain interactions \([\#20](https://github.com/omisego/pos-merchant-ios/pull/20)\)
* Improved error handling in merchant Point of Sale application [\#18](https://github.com/omisego/pos-merchant-ios/pull/18)
* Started to add admin endpoints in iOS SDK [\#93](https://github.com/omisego/ios-sdk/pull/93) [\#94](https://github.com/omisego/ios-sdk/pull/94) [\#95](https://github.com/omisego/ios-sdk/pull/95) [\#96](https://github.com/omisego/ios-sdk/pull/96) [\#98](https://github.com/omisego/ios-sdk/pull/98) [\#100](https://github.com/omisego/ios-sdk/pull/100)
* Added support for transaction request/consumption flow in the admin SDK [\#102](https://github.com/omisego/ios-sdk/pull/102)
* Added support for swift 4.2 in the SDK and Point Of Sale applications [\#104](https://github.com/omisego/ios-sdk/pull/104), [\#36](https://github.com/omisego/pos-client-ios/pull/36)
* Added base files for the Point Of Sale application and started work on user flow, welcome and loading screens, and account selection [\#9](https://github.com/omisego/pos-merchant-ios/pull/9) [\#10](https://github.com/omisego/pos-merchant-ios/pull/10) [\#11](https://github.com/omisego/pos-merchant-ios/pull/11)

**Android Point of Sale Applications**

* Continued progress on the client application: profile page with fingerprint authentication \([\#10](https://github.com/omisego/pos-client-android/pull/10), [\#18](https://github.com/omisego/pos-client-android/pull/18)\), transaction list and button animator \([\#12](https://github.com/omisego/pos-client-android/pull/12)\), sign in \([\#2](https://github.com/omisego/pos-client-android/pull/2)\) and sign up \([\#4](https://github.com/omisego/pos-client-android/pull/4)\) flow; balance screen with pull-to-refresh and QR codes for the client application \([\#7](https://github.com/omisego/pos-client-android/pull/7)\), and some end-to-end testing \([\#14](https://github.com/omisego/pos-client-android/pull/14)\)
* Added confirmation page before transfer in Merchant application [\#23](https://github.com/omisego/pos-merchant-android/pull/23)

**Coming up:**

* Advanced matrix permission system in eWallet
* Complete tracking of who did what in the eWallet \(Audit System\)
* Improve security on transactions between client and merchant Point Of Sale applications

You can also follow our progress on the eWallet [Waffle board](https://waffle.io/omisego/ewallet)!

