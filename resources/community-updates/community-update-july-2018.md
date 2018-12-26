# Community Update — July 2018

Welcome to the inaugural edition of the OmiseGO Community Update! Whether you are a casual fan or a devout aficionado of all things blockchain and crypto networks, it can be difficult to keep up with all the developments happening here at OmiseGO. The intention of this first post is to provide a comprehensive update on business developments, technical progress and community outreach/events. And if you pay attention, there may also be some cute dog pictures of Plasma sprinkled throughout. ;\)

**Courtesy announcement concerning movement of OMG tokens:**

Distribution of team and advisor allocations will be starting today. We know these movements are observed and speculated about, so we want to make it clear that OmiseGO is not selling off our reserves. We will be sending the tokens reserved for team and advisors to a financial intermediary, who will handle the disbursement from their side in stages. The remainder of tokens will be kept in a multisig wallet belonging to OmiseGO, for longterm safekeeping and eventual staking.

#### **Technical Update** <a id="9c99"></a>

**Plasma Research**  
On the research front, we’ve been working to optimize our smart contracts, improve overall user experience, and make Plasma more accessible.

We recently published a [draft contract](https://github.com/kfichter/contract-drafts/blob/master/FastWithdrawal.sol) for [Simple Fast Withdrawals](https://ethresear.ch/t/simple-fast-withdrawals/2128/29), a mechanism that allows users to pay a small fee to withdraw their funds more quickly. We also published a [contract](https://github.com/kfichter/contract-drafts/blob/master/MMRStorage.sol) for [Merkle Mountain Range Storage](https://ethresear.ch/t/double-batched-merkle-log-accumulators-for-efficient-plasma-commitments/2313). This contract utilizes a cool storage method that allows us to repeatedly reuse storage space and save gas. The optimization cuts the cost to publish Plasma blocks by about 50%. It also ensures that we’re prepared in the event that Ethereum implements [storage rent](https://ethresear.ch/t/a-simple-and-principled-way-to-compute-rent-fees/1455).

Some community members may have noticed that [plasma-mvp](https://github.com/omisego/plasma-mvp) has been going through changes. We’ve spent some time cleaning up the repository and preparing to convert it into a “hackathon-ready” Plasma MVP implementation. Basically, this means that \`plasma-mvp\` will be used as a learning tool to make Plasma more accessible. Our priority here will be making the root chain contracts as readable as possible \(instead of optimizing gas costs\). We think this will be extremely important in continuing to convert developers to the “dark side” \(aka Plasma research\) and improve overall Plasma understanding. This is a fundamentally community-driven effort, so we would love your feedback here!

Meanwhile, we’re moving the production Plasma root chain contracts to a new repository, [plasma-contracts](https://github.com/omisego/plasma-contracts). The focus of that repository will be optimization and security in preparation for real-world deployment. This separation of concerns will allow us to iterate more quickly on our smart contracts. Expect a majority of updates in the near future to happen in this repository. Although the “plasma-contracts” repository will primarily track our production priorities, we’ll also be building upon that work for research contracts. This includes our new research implementation of [More Viable Plasma](https://ethresear.ch/t/more-viable-plasma/2160). The MoreVP contracts will be published after some minor cleanup. We’ve been working on this implementation for a while and we’re very excited to get public review.

Research into Plasma Cash is still ongoing but has been slowed as we’ve focused more of our efforts on shipping our initial iterations of the exchange. At this point in time, we think Plasma MVP is more suited for our immediate needs. Plasma Cash works particularly well for non-fungible assets, but we don’t \(currently\) believe it to be the correct solution for general exchange. Because this may change in the future, we’re being very careful to ensure that our contracts are upgradeable.

As always, please feel free to ask questions about anything research or technical. The easiest way to get in touch on research/tech questions is to tag us on [Reddit](https://www.reddit.com/r/omise_go/) \(/u/kelvinfichter\) or open an issue in the relevant repository on [Github](https://github.com/omisego). We’ll try to answer as quickly as possible.

**eWallet SDK 1.0.0-pre0 Version Release**  
As covered in the most recent [update](https://www.reddit.com/r/omise_go/comments/8wmwod/ewallet_update_the_wendy_im_home_edition/) posted to Reddit, we have released the 1.0.0-pre0 version of the free, open source eWallet SDK.

This release is ready for production so long as no unexpected bugs emerge during testing. We plan to continue fixing and improving components, but not experience breaking changes going forward. The 1.0.0-pre0 will be a stable version capable of minting and transacting tokens within a closed ledger.

1.0.0-pre0 establishes the framework to which we will now begin adding features and making continuous improvements. We’re now able to move forward on several fronts:

* Enterprise wallet providers will now be able to test a stable version of the wallet in preparation for the addition of blockchain connectivity — both businesses that want to have eWallet services built out for them and businesses that want to integrate their existing eWallet with the blockchain.
* OmiseGO will be able to get concrete feedback from partners and potential implementers as we support them in customizing the SDK to their own needs, which will allow us to better prioritize improvements and additions going forward
* Independent developers can familiarize themselves with the stable SDK and start exploring ways to build out working products.

As we focus on future development, our team’s top priority is to create tools that will be useful and enforce security in the long run, to make decentralized networks and open source platforms that are truly ready to be deployed into the real world. Ultimately, the SDK will allow anyone — enterprise, startup, small business, or sovereign user — who needs online asset exchange to connect seamlessly to the OMG Network.

If you’d like to know more:

* Check out the demos of the eWallet [admin panel](https://www.reddit.com/r/omise_go/comments/8wnhjq/demo_ewallet_admin_panel/) and [front end](https://www.reddit.com/r/omise_go/comments/8ww6ql/bonus_ewallet_front_end_minidemo/).
* For more technical details and to follow along on the progress, visit our [Github](https://github.com/omisego/ewallet).
* Watch Reddit for weekly mini-updates on SDK progress

#### **Business Development Update** <a id="814a"></a>

In addition to working closely with those looking to build on OMG, positioning ourselves within the wider world by building relationships both within the Ethereum ecosystem and beyond is critical to our success. We look to our partners and allies for mindshare, feedback, collaboration and inspiration. Some highlights from recent months include:

**OmiseGO and Status Partnership**  
We recently announced our partnership with Status, which we couldn’t be more excited about. Status combines a messenger, wallet and browser that allows smartphone users to run decentralized applications, also known as dApps, which puts the power of the entire Ethereum network right in the hands of its users. The partnership will consist of Status leveraging the OMG Decentralized Exchange \(DEX\) by integrating the OMG Software Development Kit \(SDK\) into their native wallet, allowing us to test out early implementations of the SDK and DEX on a powerful decentralized platform. Read more about the collaboration [here](https://blog.status.im/status-partners-with-omisego-565577d2f72).

**Support for Stanford’s Center for Blockchain Research \(CBR\)**  
OmiseGO, along with the Ethereum Foundation, the Interchain Foundation, DFINITY, Protocol Labs, and Polychain Capital, will be supporting the [Center for Blockchain Research \(CBR\)](https://cbr.stanford.edu/) in a 5-year program researching and furthering the field of cryptocurrency. Led by Dan Boneh and David Mazières, both professors of computer science at Stanford, the center will connect university students, faculty, and industry leaders to build best practices, create on-campus courses, and lead workshops and conferences to explore a technology that will change the way people and organizations build relationships and transact with each other over the internet.

**MoU with Shinhan Card**  
This agreement with Shinhan Card confirmed mutual interest and closer collaboration between the parties to further advance Shinhan Card’s digital offerings across its portfolio of payment services and mobile application in today’s growing mobile payments market. The MoU outlines several areas of collaboration including leveraging Omise’s broad portfolio of payment technology and solutions; exploring potential joint projects and new business models; and identifying cross-border use cases and key application opportunities based on the OMG technology.

**Neutrino Japan and Singapore Launch**  
In June we officially opened the doors to Neutrino in [Tokyo](https://e27.co/omisego-global-brain-launch-co-working-space-blockchain-startups-tokyo-20180328/) and [Singapore](https://coingape.com/omisego-backed-blockchain-co-working-space/). The coworking and community space will serve as a blockchain focused hub for various companies to collaborate and foster relationships in Southeast Asia and around the world. We hosted many community building events in Neutrino offices such as the opening parties for Neutrino sponsors and members in both Japan and Singapore as well as a Plasma research event in Tokyo. In July, we will be hosting a Dapps meetup, a global project showcase, Blockchain for SDGs and OmiseGO workshop. This is only the beginning as we have branches planned in Shanghai, Beijing, and Bangkok in the coming year.

![](https://cdn-images-1.medium.com/max/1600/1*Qd2ZyJCR8_KXOm-EM2rMTw.jpeg)  
Members have officially moved in to Neutrino Tokyo.

![](https://cdn-images-1.medium.com/max/1600/0*neTSweWDPFpa5UUy)  
The Opening Launch Party at Neutrino Singapore @ The Great Room had a full house!

#### **Community Update** <a id="6277"></a>

We had a busy June bringing people together both online and face-to-face in Thailand — home of our Bangkok office, the OmiseGO mothership. Here are some of the meetups and events we were a part of:

**Blockchain Development Workshop hosted with Ethereum Foundation — Bangkok, Thailand**  
David Knott and surprise guest Vitalik Buterin led an interactive Introduction to Blockchain workshop for 40 top developers in Thailand at the KX Knowledge Exchange Innovation Center in Bangkok. Attendees ranged from blockchain-curious developers to researchers and non-technical learners. The workshop was an open format and the discussions covered topics such as state channels, Plasma, Proof of Work, Proof of Stake, how to build smart contracts and why working in blockchain matters.  
![](https://cdn-images-1.medium.com/max/1600/0*fAU4Q9RenvttA8Rl)  
Thank you to the KX Knowledge Exchange Innovation Center for sharing their classroom space with us.  


![](https://cdn-images-1.medium.com/max/1600/0*Qe_gHLc964ymg0Qn)  
Group photo with the everyone who attended the event.

**1st Ethereum Bangkok Community Meetup — Bangkok, Thailand**  
We hosted the first Ethereum Community Meetup in Bangkok at Chulalongkorn University by the Faculty of Engineering. Key content included:

* Dr. Kunwadee Sripanidkulchai presented doctoral research on building decentralized applications on Ethereum.
* Kridsada Thanabulpong from OmiseGO shared what it’s like to be a developer at a blockchain company and why he chose to work in the industry.
* Jarrad Hope, co-founder of [Status](https://status.im/), shared [results](https://github.com/status-im/datasets/tree/master/201805_EIP0_shared_values) from the EIP0 Shared Values Survey, an open data-set of individual perspectives to help inform the Shared Values of Ethereum.
* Martin Amor from [Hoard](https://www.hoard.exchange/) discussed the evolution of the gaming industry.

The meetup included a strong representation of both Thai and English speakers, with over 150+ in attendance. If you missed it, you can watch the recording [here](https://youtu.be/2B5t0d-q9kU) \(note, some speakers presented in Thai\). This is the first of _many_ gatherings to come in Thailand as the blockchain community in South East Asia matures — we couldn’t be happier to support as it continues to flourish.

**Collider Incubator Program by QUT Creative Enterprise Australia Event — Bangkok, Thailand**  
Omise Payments and OmiseGO presented at the Collider Incubator Program event hosted by QUT Creative Enterprise Australia and HUBBA. Participants consisted of around 30 Australian entrepreneurs from various creative technology startups thinking about potentially expanding into Southeast Asia and Thailand. Our product lead, Jeremy Lam, shared insights on the challenges of e-wallet and payments in SE Asia and how OmiseGO is addressing the issue. This knowledge sharing is essential to collaboration as startups expand globally.

![](https://cdn-images-1.medium.com/max/1600/0*COgRYzBgIsnaPkfb)  
Entrepreneurs from Australia, OmiseGO, and Omise all under one roof.

**RISE Innovation Week — Bangkok, Thailand**  
Our very own Kelsie Nabben \(Business Development\) and Eva Beylin \(Strategy\) participated at The Block Club’s launch event at Krungsri RISE Accelerator. Krungsri RISE is the first corporate accelerator in Thailand to leverage the experience and knowledge of the corporate sector to help startups grow quickly. The event took place over the course of three days with Kelsie speaking on a panel about ‘how blockchain will impact the future’. She spoke on blockchain principles of decentralisation to enable better coordination between people, potential impacts of decentralisation for enterprise, privacy in open source blockchains and the impetus to adopt early in order to innovate on existing business models. Eva was a keynote speaker and presented on how to keep users and user experience in mind at every stage of blockchain building for true global financial inclusion.

![](https://cdn-images-1.medium.com/max/1600/0*i-OzzMJZcRKRwpgw)

**OmiseGO All Company Workshop — Thailand**  
The entire OmiseGO team got together in Thailand for a week long workshop to ideate, strategize, connect, learn, share and challenge each other. The workshop was incredibly productive, and connecting IRL proved invaluable to strengthening the core OmiseGO organization. This was the very first time that all 38 employees \(along with several advisors\) met in person in the same location. Here are a few highlights and learnings:

* Technical discussions around open source community engagement, eWallet / child chain integration, decentralized exchange \(DEX\) feature design, smart contract upgradeability and more
* Inspiring and productive Plasma sprint sessions
* Product discovery workshops consisting of cross functional team members breaking out into small groups to ideate and share findings
* Ethereum research discussion about Casper, Sharding, Plasma — and understanding how they all fit together
* Key inputs from advisors
* Filming the [OmiseGO AMA Holiday Special](https://youtu.be/qD-IbiVpcT8) and answering every single AMA question submitted on [Reddit](https://www.reddit.com/r/omise_go/comments/8l26cg/official_question_thread_for_omisego_ama_1/).
* A technical deep-dive into what is required for a next generation DEX.
* Partnership and business on-boarding strategy

Most importantly, we learned how critical and productive it is for us to sync as a collective unit. With the social foundation strengthened from this face to face experience, we all understand each other more deeply as team members and fellow citizens of the world, allowing each of us to return home and continue \#buidling across time zones, distributed across the globe.

![](https://cdn-images-1.medium.com/max/1600/0*Ksv2quqU-cvbQ57f)  
An “un-conference” style workshop allowed us to determine the most important topics we wanted to discuss as a team.

![](https://cdn-images-1.medium.com/max/1600/1*itHaTfSOXFjTOw0es7vLnA.jpeg)![](https://cdn-images-1.medium.com/max/1600/0*ZqukauMEgIq7GCxN)  
Plasma enjoys long walks in the park — the simple things in life.

**TechCrunch Sessions: Blockchain 2018 and TechCrunch Ethereum Meetup — Zug, Switzerland**  
In the heart of Crypto Valley in Zug, Switzerland, Jun Hasegawa, Vansa Chatikavanij, and David Knott attended TechCrunch Sessions: Blockchain 2018. Jun [talked](https://tcrn.ch/2NybwjY) with Jarrad Hope from Status and Galia Benartzi from Bancor Protocol about how OmiseGO grew and nurtured the team. At the Ethereum Meetup the following day, David gave a talk on preventing validator centralization in Proof-of-Stake blockchain and why we need to create systems that empower everyone to stake. Vansa spoke about the future of exchanges alongside CTO of Coinbase, Balaji Srinivasan and Vitalik Buterin.  


![](https://cdn-images-1.medium.com/max/1600/0*YnO79o9zXuB9a3Yt)  
David also moderated the Proof of Stake panel with Vlad Zamfir, Karl Floersch, Adrian Brink, and Peter Czasan.

![](https://cdn-images-1.medium.com/max/1600/0*SEE0PnMpXHEw9Cju)  
Jun, Jon, and Jarrad meet up for a photo after announcing the Status & OmiseGO partnership at TechCrunch.

**What’s coming up?**

* [Town Hall 0x3 ](https://www.reddit.com/r/omise_go/comments/8xlw0e/official_announcement_omisego_town_hall_0x3/)will cover the eWallet SDK 1.0.0-pre0 release / demo / design and Plasma progress on July 17th at 4am UTC
* [Decentralized Web Summit](https://decentralizedweb.net/) hosted by [Internet Archive](https://archive.org/) in San Francisco, USA on August 1–2

Until next time! ~

