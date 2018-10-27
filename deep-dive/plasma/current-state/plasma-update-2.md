# Plasma Update \#2

## Fast Withdrawals for Faulty Plasma Chains

In our [last update](https://www.reddit.com/r/omise_go/comments/962woa/plasma_update_8918_whoomp_there_it_is/) we talked a little bit about [Fast Withdrawals](https://ethresear.ch/t/simple-fast-withdrawals/2128), which make it easier for users of the OMG network to quickly withdraw their funds. We designed our fast withdrawal mechanism in the context of a properly functioning Plasma chain. However, the design doesn’t work if the chain goes bad for some reason \(like in the case of a successful attack on the PoS mechanism\). We still want to be able to use fast withdrawals to minimize friction in these extreme cases, so we developed a new mechanism that still works if the Plasma chain is faulty! You can read up about our design [here](https://ethresear.ch/t/enabling-fast-withdrawals-for-faulty-plasma-chains/2909/4).

### Finalizing MoreVP

We just finalized most of our documentation around [More Viable Plasma](https://github.com/omisego/research/blob/master/plasma/plasma-mvp/specifications/morevp.md), which will serve as a reference for public scrutiny. We’d like to add a few more diagrams to make things clear and we have some proofs to rewrite for formal verification purposes, but overall we’re pretty happy about how this turned out. The MoreVP smart contracts are currently being pulled into our production repo. Community feedback is always more than welcome!

### Robust Exit Challenges

As our big design changes become finalized, we’ve had more time to dive into some minor economic details. We pointed out a few [concerns](https://ethresear.ch/t/challenge-bond-pricing-concerns/2926) with the economics of Plasma challenges, but we concluded these concerns [probably weren’t an issue in practice](https://ethresear.ch/t/challenge-bond-pricing-concerns/2926/4). We’re working on a few mitigations anyway \(mechanism designers are paranoid\) and will be publishing some thoughts soon!

### LearnPlasma

We’re still contributing content to LearnPlasma whenever we get the chance. We recently added some content for the [Plasma MVP page](https://www.learnplasma.org/docs/plasma-mvp.html). We also heard your [request](https://twitter.com/evabeylin/status/1031650811556724736) for more content about the use-cases Plasma provides. Comparison charts between the different Plasma designs and the different L2 scaling methods are in the works and coming soon! If you ever want to see specific content on the website, please make an issue on the GitHub [here](https://github.com/ethsociety/learn-plasma/issues).

### OMG Network Repo is Now Public

We’re ready to share our [elixir-omg](https://github.com/omisego/elixir-omg) repo with the world! This is the repository for an early alpha release of the Tesuji Plasma milestone, the basis of the first release of the OMG Network. We are still testing internally and not yet ready for public testnet; but the repo contains instructions to download the child chain server and watcher \(software which monitors the behavior of the Plasma chain and root chain\), either for research or just for fun - NOT for production. See our announcement [blog post](https://blog.omisego.network/omg-network-repo-is-now-open-source-5d4376a6c4ef) and [Readme](https://github.com/omisego/elixir-omg/blob/develop/README.md) for more details.

### Long Term Planning

### Hiring

A shift of focus toward stress testing the blockchain client means the research team has had the chance to divert resources toward hiring. We’re in a good spot to grow the team and set us up for the next set of challenges that will inevitably be revealed by real world use-cases. Check out our [job posting](https://omise.bamboohr.co.uk/jobs/view.php?id=107) if you think you’d be a good fit!

### Plasma Research Coordination

Plasma is extremely useful, but can also be extremely complex. At the same time, Plasma researchers are currently spread across many projects and huge geographical distances. This all means that good coordination around the research process is really important! Recently, we’ve been working hard to coordinate Plasma research in the ecosystem and to collaborate with teams working on other Plasma projects. As part of this, a few researchers recently got together in NYC and hacked away at some hard Plasma projects, including a Plasma Debit specification \(being finalized now\) and aggregating Plasma chains to decrease cost for operators. Expect to see some awesome work come out of these efforts and for more researchers to join the fold!

### Plasma Call \#13

Notes from the most recent [Plasma call](https://www.youtube.com/watch?v=SETRL75eDgE):

* [0:28](https://youtu.be/SETRL75eDgE?t=29) - Gnosis joins the Plasma Implementers Call! They’re working on [Batch Auctions on Plasma](https://ethresear.ch/t/batch-auctions-with-uniform-clearing-price-on-plasma/2554).
* [2:17](https://youtu.be/SETRL75eDgE?t=137) - [LearnPlasma](https://www.learnplasma.org/) is getting there and is being updated as people have time.
* [3:09](https://youtu.be/SETRL75eDgE?t=189) - Alex and Georgios are working on [Plasma Debit](https://ethresear.ch/t/plasma-debit-arbitrary-denomination-payments-in-plasma-cash/2198). Mainly trying to work out user experience and accessibility. Lots of questions about capital lockup costs and optimal operator behavior.
* [16:53](https://youtu.be/SETRL75eDgE?t=1013) - Dan is thinking about “Plasma Wire,” a potential add-on to Plasma Debit that improves user experience.
* [27:35](https://youtu.be/SETRL75eDgE?t=1655) - Kelvin is organizing a “Plasma Working Group” for Plasma researchers to work together in person. Should have a meeting after Devcon4!
* [28:57](https://youtu.be/SETRL75eDgE?t=1737) - Georgios is also thinking about how to design [Plasma XT](https://ethresear.ch/t/plasma-xt-plasma-cash-with-much-less-per-user-data-checking/1926) for Loom’s future Plasma Cash implementation. Kelvin and Georgios talk a little about how XT works in practice and some of the more annoying components.
* [39:18](https://youtu.be/SETRL75eDgE?t=2358) - Gnosis goes into much more detail about their Plasma chain design. We highly recommend watching this full section if you have ~20 minutes.
  * GitHub [here](https://github.com/gnosis/dex-research/releases/tag/v0.1.0)
  * Presentation [here](https://docs.google.com/presentation/d/1AFGVtCmso0MM2AKZanan8uAubcZ0PmrEUyW5vYPyqV0/edit#slide=id.g3d8edd1da9_5_1)
  * Full paper [here](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2924640)
* [1:03:48](https://youtu.be/SETRL75eDgE?t=3828) - Karl has a ridiculously long 2000-slide presentation about cryptoeconomics. This might burn through your data on mobile: [link](https://docs.google.com/presentation/d/1kLHeecMOl_UUZOu1dyfL-1AfmxB-dD2bTveT_JfbP9s/edit).

