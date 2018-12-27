# Community Update  05— November 2018

#### **Technical Update** <a id="ecdc"></a>

**eWallet Suite**

The eWallet Suite team has made a lot of progress in November. After setting up the eWallet to run as a standalone application, enabling small businesses to integrate with the OMG network without going through all the usual technical hoops, in September; and then fine tuning the setting system for ease of use on the eWallet Suite in late October — we’ve dedicated time on fine-tuning the program by swatting bugs left and right. We managed to fix bugs in fixed filtering, a bug in login error handling on admin panel, and the bugs and race condition in the settings system.

The team worked on advanced filtering this month. A tool we believe helps provide ease-of-use of the eWallet Suite. With this update it allows the data in the eWallet Suite \(e.g transactions\) to be easily searched; this wasn’t possible before.

Work on the Android application and system was carried out. We refactored the Android POS Merchant Application and added more tests. We also implemented transaction request support for both the Android POS Merchant Application and the SDK Admin Panel. The Continuous Integration and Continuous Delivery \(CI/CD\) has also been set up for both Android POS Merchant and Android POS Client app.

We made improvements to the user interface design for transaction creation. This should lead to more streamlined and user-friendly use in the future of the application. The Admin panel is now designed with on-chain properties.

One big update we’re happy to see close to completion at the end of this month is the Audit system. This system allows the tracking of all changes to the data, like adding new users or adding new tokens. The administrator of the eWallet can now know exactly who did what and when, which improves overall security. The only thing missing for us to complete the audit system is the codebase. It still requires some updates before it’s ready for 1.1; it’s mostly adjustments and bug fixes. We’re working double time to see this done.

Looking forward, we’re finalizing 1.1 for release. As of now, the team is going through and checking off all the issues from this [list.](https://github.com/omisego/ewallet/milestone/2) We are doing a revamp of the admin panel that will provide better user experience and facilitate the integration of Ethereum-related functionalities. Speaking of Ethereum-related functionalities, we are moving towards Ethereum blockchain integration. Everything we do to interact with plasma will require prior interactions with Ethereum. Everything from Ethereum wallet creation, creation and minting of tokens, ENS registration, deposit and exit of funds to or from Plasma all require direct connection with the network.

November has been another busy month for the eWallet Suite team. See the full list of milestones reached [here](https://www.reddit.com/r/omise_go/comments/9wkmj5/ewallet_update_november_12_2018_the_the_light/) and [here.](https://www.reddit.com/r/omise_go/comments/a0n90p/ewallet_update_november_26_2018_the_it_does_not/)

**Plasma Research**

The start of November was geared towards [Devcon4](https://blog.omisego.network/omisego-goes-to-devcon-4-with-an-internal-testnet-a-plasma-mvp-and-a-pixelated-dog-5a4b6b887066), and as such, a lot of our efforts allowed us to demo the first full-stack integration of a very early version of the OMG network. The first thing we focused on was containerizing and deploying the child chain and watcher in a stable and repeatable manner. We also completed some product monitoring and logging services for the watcher.

Then of course to ensure a smooth presentation we did a few bug fixes for latency assumptions that differ between development environments on developer machines and real-world environments. This included increasing certain timeouts and handling multiple block submissions per root chain block.

Our work on the MoreVP continues to move forward, product deployment has been a bit more demanding and work heavy than what we originally expected, so we devoted a few weeks entirely on MoreVP — wherein we did a MoreVP refactoring and implementing the MoreVP exit game in our smart contracts, child chain service, and the watcher.

We’ve made some strides in mediating the issue the current Plasma MVP design of non-long-term scaling. We now have Plasma Prime, a series of improvements to Plasma Cash that make it possible to simulate fungible assets. While still under constant development with many kinks to iron out, it’s a step towards the right direction. There’s even an [experimental client](https://github.com/plasma-group/plasma-prime) of it out in the wild.

We’re now seeing viable “Plasma Apps”, or what Kelvin and Ben Jones call “PLAPPS”, through the construction of [state enabled plasma chains](https://ethresear.ch/t/plasma-leap-a-state-enabled-computing-model-for-plasma/3539). These state enabled plasma chains make it possible to build applications on top of plasma chains. This work is far from finished but it’ll form the building blocks of the future of plasma as a generalized scaling solution beyond payments and exchange.

Work continued on MoreVP, particularly on refactoring and implementing the MoreVP exit game in our smart contracts, child chain service, and the Watcher. We’ve spent some time our Child Chain and Watcher APIs for more consistency with the eWallet APIs.

Feedback from the Devcon4 demo has been an essential part of our November development. We started refactoring the Watcher with better developer experience in mind. We want it to be easier for developers to run and integrate with the watcher. We also started a structural rebuild of our internal testnet for greater robustness and production support. We are aiming for a testnet that is proactive and forward-looking — one that looks at all possible scenarios and implement innovations to mitigate any untoward outcomes; in preparation for future evolution and iterative development.

The developments of November started with a Devcon4 centric approach but by mid-month we compiled all of the information and feedback from Devcon4 to refactor Plasma to get it ready for further development and more developer and real-world use.

For more details, read here:

[Plasma Update \#8–19 November 2018  
](https://www.reddit.com/r/omise_go/comments/9ylxge/plasma_update_8_november_19_2018/)[Plasma Update \#7–5 November 2018](https://www.reddit.com/r/omise_go/comments/9ui2g9/plasma_update_7_november_5_2018_devcon_recap/)

#### **Business** <a id="db9d"></a>

**When you put a ride-hailing service on a blockchain, drivers and passengers get better experiences**

Creating an environment that fosters experiences that are fairer and more efficient for all engaged parties is what we’re all about. Everyone wins. As such, we are happy to be working with [MVL](https://mvlchain.io/), the mobility blockchain protocol behind [TADA](https://tada.global/), Singapore’s first blockchain ride-hailing service.

Say goodbye to unfriendly services, unfair prices and stress from providing and getting a ride. These are the benefits offered by TADA.

The purpose of the collaboration is to develop a POC to verify the suitability and performance of the OMG Network for their data record-keeping system. MVL will record data generated from TADA on the OMG Network. As part of the MoU, both companies will commit to technical cooperation and research on the actual use of blockchain technology in TADA.

“We are pleased to sign an MOU with MVL to deliver a POC for their ride hailing service TADA. This serves as a step forward in our efforts to showcase the potential and benefits of the technologies OmiseGO is developing and also a great opportunity to work with an innovative company that seeks to deliver reliability and transparency through their incentive structure and data recording and sharing ecosystem — values that we appreciate and subscribe to,” said Vansa Chatikavanij, OmiseGO’s Managing Director.

The collaboration is expected to improve the performance and growth of TADA, one of the world’s first mass adopted blockchain products, which in turn will pave the way for greater acceptance and adoption of blockchain powered products and services by the masses.

#### **Events** <a id="e5e7"></a>

**BUIDL Seoul, 29–30 November 2018**  
![](https://cdn-images-1.medium.com/max/1600/0*ickgl3PUZ8sWlnNu)  
Decentralization of Existing Financial Services panel discussion.

David gave a talk on “Reality _on_ chain” and sat on a panel — “Decentralization of Existing Financial Services at [BUIDL Seoul](https://buidl.kr/). The event was attended by developers, blockchain projects, investors and the Korean community looking to learn about blockchain technology.

**Beyond Blocks \(Bangkok\), 26–27 November 2018**![](https://cdn-images-1.medium.com/max/1600/0*-nmsnrljR2QCR20K)  
****David talking about Plasma.

We were at [Beyond Blocks Summit](https://beyondblocks.com/summit/bangkok/) in Bangkok from 26–27 November 2018. David delivered the keynote presentation on plasma: what it is, current status and role in blockchain design. For plasma research updates, please see what we wrote at the top.

**Node Tokyo, 19–20 November 2018**

\*\*\*\*![](https://cdn-images-1.medium.com/max/1600/0*GkA1gIq1KSLobphc)  
****OmiseGO Team at NODE Tokyo

OmiseGO co-organized [Node Tokyo](https://nodetokyo.jp/), which took place on 19–20 November 2018. The conference was the largest ever blockchain event in Japan to date, with an audience of over 500 enterprises, developers and students. Core blockchain contributors such as the Ethereum Foundation, Status and Polka Dot were present alongside leading technology enterprises: Microsoft, Mitsui Fudosan, LayerX and Mercari Group.

The event served as a venue where the latest industry research and development were shared, and it was an opportunity to develop understanding between open source projects and local enterprises.

OmiseGO was able to provide an update on research and development, share knowledge with local blockchain developers in a pre-event technical workshop, and strengthen local relationships, which are bolstered by the Japan office team and Neutrino blockchain co-working space.

#### **Building our community** <a id="61b2"></a>

Community is at the heart of what we do and the OMG Network. We announced our China community channel on WeChat \(ID: omisego\_china\). Join us there for Chinese language content and to engage with other Chinese speakers on OmiseGO, the OMG Network, fintech, scalability, blockchain technology and decentralization.

#### **Events in December** <a id="9198"></a>

In Retrospect, Seoul, 2 December 2018

[ETHIS Singapore](https://ethsingapore.co/), 7–9 December 2018

That’s all for now! See you in December! :\)

