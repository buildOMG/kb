# eWallet Update 15

We did our best to take a little time off for the holidays[,](https://imgur.com/gallery/lOuTa2H) but we still made a big step forward at the tail end of December with the release of version [1.1.0-pre.0](https://github.com/omisego/ewallet/releases/tag/v1.1.0-pre.0). This is a pre-release, meaning a candidate for release which will undergo thorough testing and some final tweaks before going on to become the version 1.1 stable release.

### Completed

Here are the main items we’ve knocked out since the last update:

* Settings migration from environment variables to the database [\#578](https://github.com/omisego/ewallet/pull/578)
* Report internal server errors to Sentry [\#585](https://github.com/omisego/ewallet/pull/585)
* Fix Random DBConnection.ConnectionError [\#584](https://github.com/omisego/ewallet/pull/584)
* Optional application monitoring with AppSignal [\#586](https://github.com/omisego/ewallet/pull/586), [\#608](https://github.com/omisego/ewallet/pull/608)
* Stricter Redirect URL prefixes validation \(thanks [@jpopxfile](https://github.com/jpopxfile) for reporting the issue\) [\#597](https://github.com/omisego/ewallet/pull/597)
* Complete the full activity log system which logs all changes to data [\#560](https://github.com/omisego/ewallet/pull/560)
* Add endpoints to retrieve activity logs [\#606](https://github.com/omisego/ewallet/pull/606)
* CSV export for transactions [\#605](https://github.com/omisego/ewallet/pull/605)
* Switched to Distllery in releases [\#312](https://github.com/omisego/ewallet/pull/312)

### In review

These tasks have been completed, pending review by wallet team admins:

* Increase test coverage for ActivityLogger [\#618](https://github.com/omisego/ewallet/pull/618)

### In progress

These are the tasks we’re focusing on right now:

* Show activity logs in admin panel [\#617](https://github.com/omisego/ewallet/pull/617)
* Add exporting CSV feature to admin panel [\#613](https://github.com/omisego/ewallet/pull/613)
* Increase test coverage [\#611](https://github.com/omisego/ewallet/issues/611), [\#612](https://github.com/omisego/ewallet/issues/612), [\#614](https://github.com/omisego/ewallet/issues/614), [\#615](https://github.com/omisego/ewallet/issues/615)

### Coming up:

We’ll be working on the remaining improvements and additions as well as lots of testing in order to take v1.1 from release candidate to production. And since we never stop looking ahead, we’ll be meeting in the coming weeks to nail down our approach to the next version once v1.1 is out.

As always, you can also follow our progress on the eWallet[ Waffle board](https://waffle.io/omisego/ewallet) and in our GitHub [Milestones](https://github.com/omisego/ewallet/milestone/2) page.

Best,  
The eWallet Suite Team

