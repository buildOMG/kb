# eWallet Update 02

Howdy! We’re back for another quick update on this week’s eWallet progress.

The focus for this week was to continue testing, refactoring and fixing bugs. We also took a good chunk of time to “evangelize” the eWallet inside Omise and OmiseGO by doing a demo to Omise’s sales team as well as an internal demo to everyone in OmiseGO as part of our monthly gathering.

What has been done on the eWallet?

* We’ve almost doubled the amount of End to End \(E2E\) tests - and found a few bugs along the way.
* Improved sample seed, including initial user funds, exchange pairs, some sample transaction requests and consumptions \([\#325](https://github.com/omisego/ewallet/pull/325)\)
* Fixed a bug on /transaction.create that fails on exchange transactions with rate of 1 \([\#317](https://github.com/omisego/ewallet/pull/317)\)
* Looked into API documentation improvements \([\#328](https://github.com/omisego/ewallet/pull/328)\)
* Fixed double-sending of the consumption confirmation event \([\#315](https://github.com/omisego/ewallet/pull/315)\)
* Fixed permissions for transaction requests / consumptions \([\#316](https://github.com/omisego/ewallet/pull/316)\)
* Added tests for transactions, wallets and tokens in the Admin Panel \([\#322](https://github.com/omisego/ewallet/pull/322), [\#324](https://github.com/omisego/ewallet/pull/324), [\#326](https://github.com/omisego/ewallet/pull/326)\)
* Started to design wireframes for new sample applications: a mobile POS system and a user application show how transactions can happen for real-world scenarios like buying a cup of coffee.

The next steps:

* Clean up all static analysis \(Dialyzer\) warnings
* Initial load testing on the eWallet server
* E2E testing for admin panel
* Readme and documentation improvements
* Set up a caching layer for generated JSON representations
* Refactor and add more tests for websockets in the Android SDK
* Simplify deployment procedure
* Better configuration error reporting

We’ve also resumed active recruitment! We’re currently looking for [2 backend Elixir devs](https://omise.bamboohr.co.uk/jobs/view.php?id=102), [1 frontend](https://omise.bamboohr.co.uk/jobs/view.php?id=64) and [1 devops](https://omise.bamboohr.co.uk/jobs/view.php?id=79).

