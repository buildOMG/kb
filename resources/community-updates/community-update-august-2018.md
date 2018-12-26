# Community Update — August 2018

It’s been an interesting month! Here’s what we’ve been up to:

#### Technical Update <a id="a9db"></a>

[**eWallet SDK**](https://github.com/omisego/ewallet)

**Point of Sale \(POS\) mobile applications for the eWallet:** the eWallet team has started working on new mobile applications: a merchant POS system that will interact with an eWallet to allow payment and top-up via QR code scanning and a client application for that POS, allowing users to present their QR code when buying something, as well as seeing their current balance.

The first step for this to happen was updating the eWallet to work as a standalone application, without the need to integrate it into another server application. The work has been done in [PR \#401](https://github.com/omisego/ewallet/pull/401). One of the biggest changes is the ability for users of a third-party app to create a new account directly in the eWallet server \(if the provider chooses to allow it\).

Before the work on those applications could start, it was necessary to update our mobile SDKs to work with the admin API of the eWallet. You can check out the repositories below for more information on how things are being implemented.

[Merchant application repo \(Android\)](https://github.com/omisego/pos-merchant-android)

[Client application repo \(iOS\)](https://github.com/omisego/pos-client-ios)

We also **moved from 1.0.pre0 to** [**1.0.0**](https://github.com/omisego/ewallet/releases). We didn’t make any big announcements because this isn’t a new release so much as completion of bug testing on an already stable release, to which we had already begun adding improvements and new features — but it was a good feeling nonetheless!

**Blockchain integration design:** we’re currently working on the design document for the eWallet blockchain integration. It’s still a work in progress, but our work so far can be found in the [OIP](https://github.com/omisego/OIP/pull/12) \(OmiseGO Improvement Proposal\) on Github. We would like to welcome the community to participate in the design discussion.

**eWallet Updates:** following the introduction of bi-weekly updates on Reddit by the Plasma team, the eWallet team will now switch to biweekly as well so that updates alternate between Plasma and eWallet. For more details on the latest technical work, take a look at our two most recent updates:

* [eWallet Update 17/08/18: the “Madness? This. Is. Sparta!” edition](https://www.reddit.com/r/omise_go/comments/98gqno/ewallet_update_81818_the_madness_this_is_sparta/)
* [eWallet Update 03/08/18: the “All it takes is a little push” edition](https://www.reddit.com/r/omise_go/comments/94jeki/ewallet_update_030818_the_all_it_takes_is_a/)
* [Town Hall 0x3](https://www.youtube.com/watch?v=Mk7Cn0OrOYU)

[**Plasma Research**](https://github.com/omisego/research)

What follows is a relatively high-level overview of recent work on Plasma. More in-depth technical information will come through our new bi-weekly Plasma updates posted on Reddit. You can check out our latest Plasma Update posted on 8/9/18 [here](https://www.reddit.com/r/omise_go/comments/962woa/plasma_update_8918_whoomp_there_it_is/)!

Over the last few weeks, the Plasma team has been spending a lot of time working out auxiliary services for our Plasma implementation. This includes an improvement to fast withdrawals, additional work on mass exits, and more math around the economics of Plasma.

We’ve also been finalizing some documentation around [More Viable Plasma](https://github.com/omisego/research/pull/44), our proposed V1 Plasma design. This should make the design easier to pick apart and prepare us for formal verification of our contracts.

Finally, we’re starting a hiring push for a team that will focus more on theoretical research, specifically to work on long-term problems. This team will mostly focus on exploring some of the harder long-view scalability problems and coming up with cool new components for our Plasma implementation. If you think you might be interested in that sort of work, feel free to reach out to Kelvin on Reddit \(u/kelvinfichter\), or apply on our [careers](https://omisego.network/careers) page.

#### Community/BizDev Update <a id="e30b"></a>

It becomes difficult to separate community engagement from business development when you are simultaneously creating a completely free and open source product and an n-sided marketplace; your success depends on the health of a complex ecosystem of partners and collaborators; and your product is equally aimed at enterprise providers and individuals operating entirely free of intermediaries. So we’re treating these as an integrated category in this post, just like we do in real life.

**Decentralized Web Summit, San Francisco, USA**

The Decentralized Web Summit took place in San Francisco on July 31 — August 2 and was hosted by the [Internet Archive](https://archive.org/). Not focused on blockchain specifically, the event was a gathering of minds for those who share a vision of decentralization and a Web 3.0 of many winners. This community had the foresight to begin the crusade to keep the Internet a free and public resource even before it entered mainstream culture. OmiseGO sponsored the first Decentralized Web Summit in 2016, and returned this year as top sponsors along with Ethereum Foundation. Eight members of the OmiseGO team as well as many of our advisors and crypto-friends were present on the ground to be part of the discussion.

![](https://cdn-images-1.medium.com/max/1600/0*CbgWBdlEm-jL1ZGc)  
_Althea moderates a panel on_ [_Cryptocurrency and the Law_](https://archive.org/details/decentralizedwebsummitmedia-2018-frontend-2/DWeb+Front+End+080218+05.mov) _with Ryan Shea, Martin Ammori, Peter Van Valkenburgh and Zooko Wilcox_

One of the keynote [panels](https://archive.org/details/decentralizedwebsummitmedia-2018-frontend/DWeb+Front+End+080118+06.mov) included a few grandfathers/mothers of the Internet — Tim Berners-Lee \(created of the World Wide Web\), Whitfield Diffie \(created public-key cryptography\), Brewster Kahle \(founded the Internet Archive, co-founded Alexa Internet\), and Mitchell Barker \(Executive Chairwoman of the Mozilla Foundation and of Mozilla Corporation\). The key takeaway was the unified agreement that founders should build non-profits rather than for-profit organizations to focus on the true impact to users and building the right infrastructure. Organizations who do this will be supported and taken care of.

Building on those ideas, Aya Miyaguchi and Albert Ni of Ethereum Foundation spoke about the [subtractive mindset](https://archive.org/details/decentralizedwebsummitmedia-2018-frontend-2/DWeb+Front+End+080218+04.mov): whereas the addition mindset, typical among startups and for-profit businesses in general, seeks to increase influence and views human resource acquisition as a zero-sum game, the subtraction mindset seeks to actually decrease an organization’s power and place talent and other resources wherever they can make the biggest impact. As Albert succinctly puts it, is an organization trying to _capture_ opportunities, or is it trying to _distribute_ opportunities?

Joseph Poon \(OmiseGO Advisor and co-author of Plasma and Lightning Network\) spoke about [self-interested sharing](https://decentralizedweb.net/videos/talk-joseph-poon-the-abundance-game/) as popularized by companies like Paypal and Uber, which give away billions of dollars to both users and providers in order to gain adoption and mindshare. Joseph collaborated on a recently-founded community project \(announced the same morning as his DWeb talk\) which applies this principle to decentralized systems.[ Handshake](https://handshake.org/)is a decentralized certificate authority and naming protocol which will distribute the entirety of the proceeds of their funds raised to FOSS \([Free and Open Source Software](https://en.wikipedia.org/wiki/Free_and_open-source_software)\) communities, collectives, and organizations to ensure Handshake remains aligned with the people who want to keep the Internet free and available for anyone. A majority of the initial token supply will be distributed to[ FOSS developers — freenode](https://freenode.net/) users, top GitHub contributors, and the[ PGP Web of Trust Strong Set](https://www.linux.com/learn/pgp-web-trust-core-concepts-behind-trusted-communication).

![](https://cdn-images-1.medium.com/max/1600/0*85kc0v8UnNAfMvGi)  
Kelvin is declared the winner of the Puzzle Challenge!

Last but not least, our very own Kelvin Fichter won the[ DWeb Puzzle Challenge](https://decentralizedwebsummit2018.sched.com/event/Fhij/puzzling-paintings-a-newly-minted-hunt-through-the-crypt) and chose the NAACP Legal Defense and Educational Fund as the recipient of a prize donation denominated in ETH, OMG and Zcash. IA will facilitate the transfer and help NAACP through the process of accepting it, in an effort to increase the capacity of the non-profits to start taking donations in different currencies.

DWeb is one of the most important and impactful events we have had the honor to be a part of. Blockchains have revolutionary potential but cannot solve every problem; we are stronger by far when connected with this network of pioneers, innovators and Internet freedom advocates. Understanding this context, finding our place within it, and doing everything we can to push forward the wider movement to lock the Internet open is absolutely critical to the success of the OMG network.

Check out archived Day 1 and 2 video from the Front End Stage below — and visit Internet Archive’s [YouTube channel](https://www.youtube.com/channel/UCFa_X02QhJnP0FNpFAKyRRg) or [full archive](https://archive.org/details/decentralizedwebsummitmedia-2018) for more video from the conference.

* Front End Stage [Day 1](https://archive.org/details/decentralizedwebsummitmedia-2018-frontend/DWeb+Front+End+080118+02.mov)
* Front End Stage [Day 2](https://archive.org/details/decentralizedwebsummitmedia-2018-frontend-2)

**eWallet SDK and Plasma workshop at Neutrino Tokyo, Japan**

\*\*\*\*![](https://cdn-images-1.medium.com/max/1600/0*RPbRk4_V6JkF_JgD)  
****Presenters and attendees at our first eWallet and Plasma workshop

On July 28, OmiseGO hosted the very first eWallet SDK and Plasma workshop at Neutrino Tokyo!

The workshop was a full day affair, with presentations in the morning and a hands-on workshop in the afternoon. Despite the approaching [typhoon](https://www.wunderground.com/hurricane/western-pacific/2018/tropical-storm-jongdari), nearly everyone that had registered for the event actually attended — the community in Japan is clearly committed!

Participants of the workshop consisted of around 40 people, both independent developers and representatives of various companies including AndGO, Cube System, Chaintope, Toyota tsusho Corporation, GMO Pepabo, NTT DATA Corporation and Nomura Research Institute, Ltd. We had a wide range of backgrounds — systems integrators, consulting and gaming, banking, a university researcher and freelancers from lead blockchain projects in Japan.

Presenters included Hitoshi from BizDev, Thibault, Mederic and Sirn from the eWallet SDK team, and Kelvin from the Plasma research team:

* Hitoshi from BizDev in Tokyo kicked off the morning session with a discussion of seamless value exchange through the OMG Network as a solution to the current lack of interoperability between wallets.
* Thibault and Mederic introduced the eWallet SDK. They gave a demo of the admin panel and walked everyone through how to issue a token.
* Sirn presented in Japanese about “eWallet 1.0 and beyond”; what makes a good open source project; and introduced our process for the product releases, OIPs \(OmiseGO Improvement Process\) and the application tools that we are using.
* Kelvin’s presentation on the “Plasma Framework” focused on Plasma mechanism design. Kelvin gave background on scalability issues on Ethereum and solutions on the main chain and on a Plasma chain. Kelvin also discussed research on how complex state can be broken down into individual objects that could be exited from a Plasma chain, and introduced what’s being worked on for future Plasma designs.

In the afternoon, participants split into two groups — one group worked hands on with Plasma and implementation of a simple smart contract, the other with the eWallet SDK. Some of the SDK group focused on key management, and some got a hands-on tutorial on eWallet installation and implementation.

![](https://cdn-images-1.medium.com/max/1600/0*m5mzxrM6gPZbt2w9)  
Kelvin leads a hands-on session on how to build a Plasma smart contract

The Plasma technical session included explanation about Plasma functions and the functionality of Plasma MVP \(depositing, submitting blocks, withdrawing\). We discussed a few of the peculiarities of the design, including confirmation signatures and exit priority, before building our own Plasma MVP contract in Solidity.

All in all, it was an extremely productive day. Hands on learning in small groups kept everyone engaged; we received many questions during every session that showed the participants’ interest in the topics presented and there was great discussion between participants and the OmiseGO team during breaks. These conversations and feedback are critical to helping us build the OMG Network. And it doesn’t end there — we’ll continue the discussions initiated at the workshops online on [http://www.learnplasma.org](http://www.learnplasma.org/), in our GitHub [repositories](https://github.com/omisego), and of course at future workshops.

We are only getting started on making sure Neutrino lives up to its mission of providing the physical space for blockchain engineers to share knowledge and ideas. We will be hosting similar events at other Neutrino locations and other venues throughout the world, with workshops already planned in Shanghai \(September 10\) and Singapore \(September 21\). Please reach out to [omg@omise.co](mailto:omg@omise.co) if you are interested in hosting a workshop in your city.

**Interesting Problems in Blockchain Event at Github HQ, San Francisco**

The day before the Decentralized Web Summit, we invited developers and engineers from across the tech industry to a meetup in San Francisco, to discuss some of the interesting technical problems that blockchain developers are grappling with. The event was hosted at the Github office in San Francisco and included teams from Golem, Parity, Protocal Labs, Ethereum Foundation, Web 3 Foundation, and ECF.

![](https://cdn-images-1.medium.com/max/1600/0*hLZK2_1mE02KyqTV)  
Presentation by Parity CTO Fredrik Harrysson

#### Upcoming Events <a id="005c"></a>

**September**

* [China blockchain week](http://www.blockchainlabs.org/week2018/) \(Sept 7–12\)
* [ETHIS](https://ethis.io/) \(Sept 8\)
* Neutrino Shanghai launch and eWallet+Plasma workshop \(Sept 11\)
* Neutrino Beijing launch \(Sept 13 — tentative\)
* Neutrino Singapore eWallet+Plasma workshop \(Sept 21\)

**October**

* [ETH San Francisco](https://ethsanfrancisco.com/) \(Oct 5–7\)
* [Web3 Summit](https://www.web3summit.com/) \(Oct 22–24\)
* Status [\#CryptoLife](https://blog.omisego.network/status-cryptolife-and-dapps-for-real-life-d4aa20ab8288) Hackathon \(Oct 26–28\)
* [Devcon4](https://devcon4.ethereum.org/) \(October 30-November 2\)

_Click_ [_here_](http://eepurl.com/dnoXZj) _to sign up for event updates and newsletters from OmiseGO._

