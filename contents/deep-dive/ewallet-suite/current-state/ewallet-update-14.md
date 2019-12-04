# eWallet Update 14

Here’s where we're at on the 1.1 tasks since the [last update](https://www.reddit.com/r/omise_go/comments/a0n90p/ewallet_update_november_26_2018_the_it_does_not/):

### Completed

These are the main items we’ve knocked out over the last two weeks:

* Use global policies in the websocket channels [\#573](https://github.com/omisego/ewallet/pull/573)
* Added the eWallet and API version details in the status responses [\#569](https://github.com/omisego/ewallet/pull/569)
* Split out the OpenAPI file into multiple files to make it more manageable [\#561](https://github.com/omisego/ewallet/pull/561)
* Fixed the update of settings with encrypted value [\#577](https://github.com/omisego/ewallet/pull/577)
* Added support for nil values when filtering [\#548](https://github.com/omisego/ewallet/pull/548)
* Fixed /account.get\_members returning internal server error with filtering [\#552](https://github.com/omisego/ewallet/pull/552)

### In review

These tasks have been completed, pending review by eWallet team admins:

* Make end-users seeable by any account [\#582](https://github.com/omisego/ewallet/pull/582)
* Rework and secure the reset password flow to prevent discovery [\#553](https://github.com/omisego/ewallet/pull/553)
* Task to migrate configuration from ENV to the Configuration system [\#578](https://github.com/omisego/ewallet/pull/578)
* Fix bugs and do improvement on Android Point of Sale application [\#27](https://github.com/omisego/pos-client-android/pull/27) [\#29](https://github.com/omisego/pos-client-android/pull/29) [\#39](https://github.com/omisego/pos-merchant-android/pull/39) [\#40](https://github.com/omisego/pos-merchant-android/pull/40)
* Fix camera issue on Android SDK [\#81](https://github.com/omisego/android-sdk/pull/81)
* Add advanced filtering on Android SDK [\#78](https://github.com/omisego/android-sdk/pull/78)
* Update dependencies on Android SDK [\#79](https://github.com/omisego/android-sdk/pull/79)

### In progress

These are the tasks we’re focusing on right now:

* Activity Log System \(formerly called Audit System\) [\#560](https://github.com/omisego/ewallet/pull/560)
* Management of the eWallet Configuration through the Admin Panel [\#575](https://github.com/omisego/ewallet/pull/575)
* Wireframes for Ethereum integration
* CSV export for all list endpoints [\#366](https://github.com/omisego/ewallet/issues/366)

### To do

Key issues to tackle in the coming weeks:

* Allow multiple wallets balances to be retrieved from the local ledger [\#547](https://github.com/omisego/ewallet/issues/547)
* Apply license to every file [\#421](https://github.com/omisego/ewallet/issues/421)
* Optional support for AppSignal [\#558](https://github.com/omisego/ewallet/issues/558)

As always, you can also follow our progress on the eWallet[ Waffle board](https://waffle.io/omisego/ewallet) and in our GitHub [Milestones](https://github.com/omisego/ewallet/milestone/2) page.

