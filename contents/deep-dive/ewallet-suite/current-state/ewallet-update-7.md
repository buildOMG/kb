# eWallet Update 07

### Changes we’ve made since the last update:

* Standalone eWallet \([\#401](https://github.com/omisego/ewallet/pull/401)\): allows an eWallet provider to set up and use the eWallet without requiring an existing solution to integrate with
* Allow tokens and wallets to be disabled \([\#443](https://github.com/omisego/ewallet/pull/443)\): once disabled, a token or wallet will still be shown, but will not be usable. This allows a provider to, for example, disable a wallet associated with an account that has been closed by the user, or issue a token for a limited-time promotion that is disabled at the end of a set period of time - without having to edit databases in a way that obscures history. This applies \*only\* in cases where users choose to grant custody of wallets/keys to the provider; a wallet to which the user has exclusive custody of private keys will never be able to be revoked or shut down by any party.
* Fix warnings that came with Elixir 1.7.0 \([\#444](https://github.com/omisego/ewallet/pull/444)\):
* Advanced filtering \([\#440](https://github.com/omisego/ewallet/pull/440)\): allows for more complex searches by adding additional filters such as equal/not equal and less than/greater than.
* Setup troubleshooting guide \([\#438](https://github.com/omisego/ewallet/pull/438)\)
* Credo upgrade. Thanks to dsdshcym! \([\#433](https://github.com/omisego/ewallet/pull/433)\)
* [Client Point Of Sale iOS app](https://github.com/omisego/pos-client-ios) and [Merchant Point Of Sale Android app](https://github.com/omisego/pos-merchant-android) are now usable
* Small update to the Blockchain integration OIP following internal feedback \([https://github.com/omisego/OIP/pull/12](https://github.com/omisego/OIP/pull/12)\)

### Coming up:

* Transaction load testing
* Forget password feature for standalone users
* Preparation for a Plasma and SDK workshop on September 11 at Neutrino Shanghai \(similar to the recent Tokyo workshop detailed in the [August Community Update](https://blog.omisego.network/community-update-august-2018-ec26b209a66b)\)

As always you can also follow our progress on the eWallet [Waffle board](https://waffle.io/omisego/ewallet)!

