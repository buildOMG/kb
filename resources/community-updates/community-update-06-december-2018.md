# Community Update 06— December 2018

It’s that wonderful time of the year again. Winter is finally here \(summer in other places\). If you’re reading this, thank you for staying with us.

There are a few days left before we cross over to 2019, so before we look forward, let’s take a moment to look back at 2018. The road was long and winding for us at OmiseGO, with a number of achievements and a handful of challenges; some we were prepared for, others, we learned the hard way.

As always, our fate is tied in many ways with that of Ethereum and the wider blockchain industry, and it has been an eventful year across the board. Ethereum 2.0 is under heavy development, bringing [sharding](https://github.com/ethereum/wiki/wiki/Sharding-FAQs) and other improvements to the Ethereum blockchain. Plasma research has emerged as a community-wide effort toward better on-chain scaling for a wide variety of use cases. This type of collaboration between projects is one of the most remarkable and rewarding aspects of working in an open-source community, and the Ethereum space in particular, and we’re proud to have been leaders in the effort.

As things move fast and not necessarily within a straight path in our industry, we’d like recap our activities from January 2018 right up to present day. We aren’t able to pack every single detail of a year in one post, but here are some key highlights.

**January 2018**  
The first [Plasma minimum viable product technical specification](https://blog.omisego.network/construction-of-a-plasma-chain-0x1-614f6ebd1612) is announced and the Proof-of-Concept \(PoC\) is created and iterated upon.

**February 2018**  
eWallet Suite repo is made public! Read [here](https://blog.omisego.network/the-omisego-ewallet-sdk-is-now-open-source-fce7c61017e9).

**March 2018**  
OmiseGO announces a [donation](https://blog.omisego.network/stateless-payments-for-stateless-people-55a4fc323c4e) of $1m USD equivalent in OMG to GiveDirectly, an organization that provides aid to populations living in extreme poverty in the form of direct cash transfers to individuals — and with it our intention to explore the possibilities of using crypto to support these and other efforts to help the poor.

[Plasma Cash](https://karl.tech/plasma-cash-simple-spec/), a Plasma construction is proposed as a scalability option that turns fungible assets into unique “coins” on the root chain. This increases security and usability but adds a new challenge as well: it requires each coin’s entire history to be tracked, which involves storing and transmitting a tremendous amount of data. Reducing history size to make increase the viability of Plasma Cash is a subject of ongoing research.

**April 2018**   
The eWallet Suite \(SDK\) is publicly released \(Sente on the roadmap\).

OmiseGO announces [MoU with Shinhan Card](https://www.omise.co/omise-and-omisego-sign-mou-with-shinhancard-to-explore-opportunities-for-fintech-and-blockchain-initiatives) to further advance Shinhan Card’s digital offerings across its portfolio of payment services and mobile application in today’s growing mobile payments market.

**May 2018**  
OmiseGO creates a PoC to explore the details of how the improvements of Plasma \(Cash\) can be incorporated into the OMG protocol.

**June 2018**  
[Neutrino](https://www.neutrino-space.com/), the blockchain co-working and community space, an initiative of OmiseGO, launches in Japan and Singapore.

**July 2018**  
eWallet SDK comes out of beta with the [1.0.0-pre0 ](https://www.reddit.com/r/omise_go/comments/8wmwod/ewallet_update_the_wendy_im_home_edition/)release.

OmiseGO and Status announce technical partnership. Status plans to leverage the OMG DEX by integrating the OMG Software Development Kit \(SDK\) into their native wallet, allowing us to test out early implementations of the SDK and DEX on a powerful decentralized platform. Read more about the collaboration [here](https://blog.status.im/status-partners-with-omisego-565577d2f72).

**August 2018**  
The OMG Network [repo](https://github.com/omisego/elixir-omg) becomes public, including instructions for anyone who would like to download the child chain server and [watcher](https://github.com/omisego/elixir-omg/blob/develop/docs/tesuji_blockchain_design.md#watcher) \(software which monitors the behavior of the Plasma chain and root chain\). Read more [here](https://blog.omisego.network/omg-network-repo-is-now-open-source-5d4376a6c4ef).

**September 2018**  
OmiseGO shares their [DEX design and approach](https://blog.omisego.network/omg-dex-update-6245812a7b2d) with the public.

**October 2018**  
Omise Holdings [announces](https://www.omise.co/omise-funding-led-by-globalbrain) that it has raised an undisclosed amount of funding from Japan’s largest private venture capital firm, Global Brain, with participation from 31 VENTURES, CVC arm of Mitsui Fudosan and returning Indonesian venture capital, SMDV. Funding is allocated to OmiseGO as well.

Quantstamp completes [audit of OmiseGO’s MVP](https://github.com/omisego/plasma-contracts/pull/36/files) implementation.

**November 2018**  
Devcon4, the biggest Ethereum gathering of the year takes place in Prague with around 3,000 attendees — representatives of hundreds of projects as well as many thought leaders and independent developers. This year’s conference was particularly energizing and productive; the community was more enthusiastic and hopeful than ever.

OmiseGO’s internal testnet is announced to the public and tested for the first time via Hoard Exchange’s [Plasma Dog](http://plasmadog.hoard.exchange/) game at Devcon 4. The game is built on Tesuji Plasma \(a milestone\), which is the first release of the OMG Network and the first implementation of plasma by OmiseGO. Tesuji Plasma’s design is based on [Minimal Viable Plasma \(MVP\)](https://ethresear.ch/t/minimal-viable-plasma/426).

Read more about Hoard’s experience working with the testnet [here](https://blog.hoard.exchange/how-hoard-created-the-first-omg-network-application-plasma-dog-62f139ec3dd4).

OmiseGO announces partnership with MVLchain, the mobility blockchain protocol behind TADA, Singapore’s first blockchain ride-hailing service. The partnership is to develop a POC to verify the suitability and performance of the OMG Network for TADA’s data record-keeping system.

**December 2018**  
Minimal Viable Plasma testnet is being redeployed following a rebuild. Once all the feature development is completed for MoreVP, the testnet will be upgraded to MoreVP. This is the version that, once OmiseGO is satisfied with it, goes on to become the public testnet. On Plasma, read more [here](https://www.reddit.com/r/omise_go/comments/a7yo24/plasma_update_10_part_2_december_20_2018/) and [here](https://www.reddit.com/r/omise_go/comments/a776en/plasma_update_10_part_1_december_17_2018/), and [follow the team](https://github.com/buildOMG/tracker/issues/28) as they advance towards external testnet.

eWallet version [1.1](https://github.com/omisego/ewallet/milestone/2) is right around the corner. Version 1.1 contains key features needed to begin integrating the eWallet with Ethereum and later plasma, as well as added functionality and user experience improvements. Keep an eye on the [eWallet waffle board](https://waffle.io/omisego/ewallet) or the [eWallet v1.1 tracker](https://github.com/buildOMG/tracker/issues/46).

**Communications and Community**

We are doing more to open up communication between the OmiseGO team and the OMG community, and have looked to our community to determine how we might improve.

In July we kick-started our [monthly community updates](https://github.com/buildOMG/comms/wiki/Community-Updates) along with technical updates from the [eWallet Suite](https://github.com/buildOMG/comms/wiki/eWallet-Updates) and [Plasma](https://github.com/buildOMG/comms/wiki/Plasma-Updates) teams. If you aren’t able to follow our weekly updates, you can also track the issues we are working on using the [GitHub tracker](https://github.com/buildOMG/tracker/projects/1). It is an easy way to stay up to date on our progress. For those who visit our Reddit, you may have seen our [weekly AMAs](https://www.reddit.com/r/omise_go/wiki/index), where we answer the top five questions each week. If you have any questions for the team drop them in [this week’s AMA](https://www.reddit.com/r/omise_go/comments/a8jnpf/omisego_ama_11_january_11_2019/)! We hope these initiatives have helped, and are always looking for new ideas. If you have any suggestions or feedback, please let us know.

**Reflections**

We’ve experienced both challenges and great progress over the past year. Open sourcing the eWallet was a major achievement. The OMG Network repo becoming public was a big step and even bigger was when we first deployed the child chain for production load at Devcon 4 via Plasma Dog \(see November 2018 above\).

In hindsight and in between, we learned immensely as a tech company that is developing software that aims to enable people to access financial services. We’re operating in uncharted territory and at every turn, there is a lesson waiting for us to learn.

We’re grateful for the resilient, innovative and united Ethereum community as well as our working partnerships with Status, Hoard, MVL, Quantstamp and Shinhan Card. We value the connections we’ve made with developers, businesses and other projects in the blockchain space and in the coming year, we will engage more with key audiences.

OmiseGO is [growing](https://omise.breezy.hr/?&department=OmiseGO#positions) as a company as we move forward with our strategy. We have solid teams of technology and financial professionals, a clear roadmap and plan of action. We’re ready to take on each challenge and look forward to the new year.

We will be at the [Binance Conference](https://www.binancefair.com/) in January. We’re on a panel! Come listen, say hi, ask questions. We’d love to see you.

Before we go, we’d like to acknowledge the role community plays in this open-source initiative and what the OMG Network stands for. We extend a heartfelt thanks to the OMG community. 2018 was a year of many ups and downs. We take these learnings forward with us into the new year and strive to do better. Thank you, thank you, thank you for your support. See you in 2019.  


![](https://cdn-images-1.medium.com/max/1600/1*NBluNjVxepezxqFKCfYfzw.jpeg)  
“Look over yonder, hooman. I smells a 2019.”

Happy holidays!  
OmiseGO Team

