# eWallet Update 06



The last two weeks of [eWallet](https://github.com/omisego/ewallet/) development were focused on finishing up bug testing on 1.0.pre0, bootstrapping the new POS \(Point of Sale\) mobile applications we’re building as well as designing the eWallet blockchain integration.

Here is the list of changes we made in the past two weeks:

* You [caught us](https://www.reddit.com/r/omise_go/comments/986xcq/httpsgithubcomomisegoewalletreleases/) - we concluded bug testing on 1.0.pre0 and moved to [1.0.0](https://github.com/omisego/ewallet/releases/tag/v1.0.0)!
* Drafted the OIP for eWallet blockchain integration [\#12](https://github.com/omisego/OIP/pull/12)
* Fixed log websocket error [\#423](https://github.com/omisego/ewallet/pull/423)
* Added sync exchange pair for admin panel [\#400](https://github.com/omisego/ewallet/pull/400)
* Enabled transaction request exchange functionality for admin panel [\#398](https://github.com/omisego/ewallet/pull/398)
* Fixed amount floating point bug [\#391](https://github.com/omisego/ewallet/pull/391)
* Aligned error message format [\#422](https://github.com/omisego/ewallet/pull/422)
* Fixed email verification link bug [\#426](https://github.com/omisego/ewallet/pull/426)
* Fixed docker-compose bug \(thanks [vanmill](https://github.com/vanmil)!\) [\#405](https://github.com/omisego/ewallet/pull/405)
* Fixed a dead link in contributing file \(thanks [IvanTheGreatDev](https://github.com/IvanTheGreatDev)!\) [\#415](https://github.com/omisego/ewallet/pull/415)
* Stricter Dialyzer analysis \(thanks [InoMurko](https://github.com/InoMurko)!\) [\#424](https://github.com/omisego/ewallet/pull/424)
* Continued development on the eWallet’s standalone capability [\#401](https://github.com/omisego/ewallet/pull/401)
* Started work on the point of sale merchant Android application [\#11](https://github.com/omisego/pos-merchant-android/pull/11) [\#12](https://github.com/omisego/pos-merchant-android/pull/12) [\#13](https://github.com/omisego/pos-merchant-android/pull/13) [\#14](https://github.com/omisego/pos-merchant-android/pull/14) [\#15](https://github.com/omisego/pos-merchant-android/pull/15)
* Started work on the point-of-sale client iOS application [\#10](https://github.com/omisego/pos-client-ios/pull/10)
* Worked on splitting the iOS SDK to support the admin API in addition to the existing client API [\#70](https://github.com/omisego/ios-sdk/pull/70) [\#76](https://github.com/omisego/ios-sdk/pull/76)
* Added client login API in iOS SDK [\#72](https://github.com/omisego/ios-sdk/pull/72)

Coming up:

* Finish an MVP version of the point of sale merchant Android application
* Finalize eWallet standalone capabilities [\#401](https://github.com/omisego/ewallet/pull/401)

You can also follow our progress on the eWallet [Waffle board](https://waffle.io/omisego/ewallet)!

Best,

The eWallet SDK Team

EDIT - consolidating a few points that came up in comments:

* POS -&gt; Point of Sale
* The Point of Sale merchant and client apps are sample user-facing apps built with the SDK, to demonstrate how a merchant could implement the SDK for a real world use case.
* We expect a working version of the Android merchant and iOS client apps to be ready by the end of this week. We will continue to make further improvements from there, and once we are satisfied that these two are complete we will build Android client and iOS merchant apps.
* These apps are "demos" in that they will not be made available on any app store, but a merchant will be able to use them as is to create their own eWallet. The functionality is a simple POS system, similar to the Starbucks loyalty card system.

