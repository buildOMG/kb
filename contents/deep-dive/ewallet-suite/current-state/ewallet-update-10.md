# eWallet Update 10

We’ve been pretty busy getting ready for Devcon, but we’ve still managed to get some good coding done! Here’s what we’ve been working on since the [last update](https://www.reddit.com/r/omise_go/comments/9ogqba/ewallet_update_october_15_2018_the_mr_stark_i/):

**eWallet** **Application**

* Finalized the eWallet settings feature \([\#493](https://github.com/omisego/ewallet/pull/493)\). This one turned out to be much more complex than we anticipated: on order to manage settings/configuration of the eWallet in a way that users can update it without having to restart the app, we had to create a new sub-application called ewallet\_config.
* Fixed a bug where preloaded exchange pairs weren’t loading properly in consumptions \([\#497](https://github.com/omisego/ewallet/pull/497)\)
* Improved transaction flow in our iOS Point of Sale Applications using the transaction request/consumption feature from the eWallet and websocket communication \([\#38](https://github.com/omisego/pos-client-ios/pull/38)\)
* Released iOS SDK 1.1.0-beta2 \([\#106](https://github.com/omisego/ios-sdk/pull/106)\)
* Implemented support transaction request for admin module on the Android SDK \([\#75](https://github.com/omisego/android-sdk/pull/75)\)

**Android Point of Sale Applications**

* Added version number and endpoint address to the profile and signin pages on Client Application \([\#18](https://github.com/omisego/pos-client-android/pull/18)\)
* Implemented balance detail page on Client Application and ability to set a primary token \([\#19](https://github.com/omisego/pos-client-android/pull/19)\)
* Changed to [Android Navigation Component](https://developer.android.com/topic/libraries/architecture/navigation/), for improved navigation flow
* Implemented support for transaction requests on Client Application \([\#21](https://github.com/omisego/pos-client-android/pull/21)\)
* Added a new sub-app dedicated to load testing \([\#499](https://github.com/omisego/ewallet/pull/499)\)

Coming up:

We’ll be working toward completing v1.1 before we jump on to blockchain in v1.2. Next up we’ll be working on features including:

* Admin permission matrix
* Transaction auditing
* Improving error reporting
* Further additions to iOS & Android Point of Sale apps

You can always follow our progress on the eWallet [Waffle board](https://waffle.io/omisego/ewallet)!

