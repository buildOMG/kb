# eWallet Update \#8

Here is what's been happening with the [eWallet](https://github.com/omisego/ewallet) since the last update:

* eWallet workshop at [Neutrino Shanghai](https://www.neutrino-space.com/shanghai)
* Started implementation of the action tracking feature - essentially a log of all actions performed within the eWallet, viewable in the admin panel. \([\#364](https://github.com/omisego/ewallet/issues/364)\).
* Continued work on advanced filtering \([\#440](https://github.com/omisego/ewallet/pull/440)\), which allows for filtering searches by more complex conditions
* Implemented new design and fingerprint authentication on [Android Merchant Point of Sale App](https://github.com/omisego/pos-merchant-android) \([\#19](https://github.com/omisego/pos-merchant-android/pull/19), [\#21](https://github.com/omisego/pos-merchant-android/pull/21)\)
* Updates to the [iOS Client Point of Sale App](https://github.com/omisego/pos-client-ios):
  * Added touch ID and face ID authentication \([\#24](https://github.com/omisego/pos-client-ios/pull/24)\)
  * Made some design updates \([\#26](https://github.com/omisego/pos-client-ios/pull/26)\)
  * Added a lot of unit tests to cover most use cases \([\#28](https://github.com/omisego/pos-client-ios/pull/28), [\#30](https://github.com/omisego/pos-client-ios/pull/30), [\#33](https://github.com/omisego/pos-client-ios/pull/33)\)
* Released iOS SDK 1.1.0-beta1 that includes the split between client and admin APIs.
* Released the official Helm Charts for [Kubernetes](https://kubernetes.io/), allowing a production-ready deployment of eWallet on Kubernetes infrastructure \(such as Google Kubernetes Engine or Amazon Container Services\).
* Added tests and documentation for [omisego-admin](https://github.com/omisego/android-sdk/tree/69-add-documentation-omisego-admin/omisego-admin) module in the Android SDK \([\#70](https://github.com/omisego/android-sdk/pull/70), [\#71](https://github.com/omisego/android-sdk/pull/71)\)
* Upgraded credo package. Thanks to @dsdshcym! \([\#433](https://github.com/omisego/ewallet/pull/433)\)

Coming up:

* An OmiseGO workshop in Singapore!
* More work on the 1.1 version of the eWallet.
* Helm Chart for deployment of the Plasma child chain server \([elixir-omg](https://github.com/omisego/elixir-omg)\).

As always you can also follow our progress on the eWallet [Waffle board](https://waffle.io/omisego/ewallet)!

