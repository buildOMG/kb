# Community Q&A

{% hint style="warning" %}
_Please note: the OMG Network is still in development, and some details cannot yet be included. This knowledge base will be revised regularly to include updates and additional details._
{% endhint %}

## Community Q&A

## [What is the difference between Omise and Omise Go? And why aren't Omise's current investors funding Omise Go?](https://www.reddit.com/r/ethereum/comments/5uo5sg/omise_go_ewallet_platform_for_payments/ddxpx4j/?context=3)

Hello and sorry for the delay. Omise is a payments processing business for Asia-Pacific; something sort-of like Stripe in the West. Omise GO is a blockchain-powered, white-label ewallet platform for the region, which will use fiat-backed tokens \(FBTs\). Two separate businesses under one roof. We believe that the ewallet business supports that payments business and vise-versa; white-label ewallet customers will for example be able to immediately pay to _all_ Omise merchants.

## I like many things about this. Lots of respect for donating $100,000 to DEVGrants [last year](https://blog.ethereum.org/2016/01/08/d%CE%BEvgrants-update-new-funding/). Also, OMG is a kickass name for a token.

Thank you very much. :\) We hope to offer more support to open Ethereum projects in the future, importantly including proof-of-stake research. If you have any questions or comments please feel free to join our Slack.

## [From what I understand, OMG tokens grant users the right to validate transactions. The user runs full node and receives additional tokens for validating, and if they validate incorrectly their bond gets slashed. Couple questions about that:](https://www.reddit.com/r/omise_go/comments/6g2hzu/post_your_questions_about_the_omise_go_crowdsale/disu9tz/?context=3)

### [\(1\) Do you just need 1 token to run a node?](https://www.reddit.com/r/omise_go/comments/6g2hzu/post_your_questions_about_the_omise_go_crowdsale/disu9tz/?context=3)

### [\(2\) Does having more tokens allow you to validate more 'transactions' simultaneously? Or is having 1 token or 1000 tokens the same from the standpoint of running a node?](https://www.reddit.com/r/omise_go/comments/6g2hzu/post_your_questions_about_the_omise_go_crowdsale/disu9tz/?context=3)

### [\(3\) What is involved in validating and what could cause an incorrect validation?](https://www.reddit.com/r/omise_go/comments/6g2hzu/post_your_questions_about_the_omise_go_crowdsale/disu9tz/?context=3)

Hi! So sorry for the slow reply, it's been hectic, to say the least..

\(1\) It's not clear yet if there will be a requirement regarding a token minimum bond for validation, but there is definitely an advantage to the validator to have more tokens staked, in the same way that there is advantage to a miner \(in a PoW network\) to have more hashpower aimed at the network. And token staking can be delegated as well..

\(2\) Validation happens per block, not per transactions.

\(3\) It's essentially the same process as a PoW design \(like Bitcoin and current Ethereum\), or a PoS design \(like Tendermint, or the future 'Casper-based' Ethereum\). Beyond this, please wait for Joseph's upcoming paper this summer \(mentioned in the whitepaper\) which will discuss validation in detail.

Thank you very much for your questions!

## [Will all the tokens be created in the crowdsale, or will there be a possibility of more tokens created, released or sold in the future? The token distribution is layed out in the crowdfunding document, but it doesn't overtly say that more tokens will not be created after the launch period.](https://www.reddit.com/r/omise_go/comments/6g2hzu/post_your_questions_about_the_omise_go_crowdsale/disueo4/?context=3)

The tokens created and allocated now, as laid out in the sale document, are it; we have no plans to create more tokens in the future, and doing so would require a fork \(or 'upgrade' as some people might prefer to call it when there is some technical necessity\).

## [Is the proof-of-stake system here going to provide an approximately standardized rate of return, say 5% compounding for example, to minters/nodes? If this is the case, are there any additional benefits to owning more coins as a minter other than the obviously larger return? For instance, does owning a larger percentage of total coins grant higher chances of winning new coins? Thanks!](https://www.reddit.com/r/omise_go/comments/6g2hzu/post_your_questions_about_the_omise_go_crowdsale/disuqqq/?context=3)

The rate of return for processing transactions will depend on fees accepted by validating nodes and the tx throughput, similar to how it works in Bitcoin and Ethereum. Validating nodes that have more coins bonded \(staked\) will have an advantage in receiving more of the tx fees, yes.

## [How is this possible? The max you could contribute in the pre-sale is $100,000 per person and according to your numbers the average investment would be $133,333 per person. Also, the pre-sale cap was $4M. I think this might just be slack talk? I am going to wait for an update from an official source. u/omise\_go?](https://www.reddit.com/r/omise_go/comments/6hj5qr/presale_via_bitcoin_sussie_is_closed_450_people/dizofgb/?context=3)

The key word there is "pledged" \(not "accepted"\) - that was the sum of rough figures Bitcoin Suisse gave us that people asked for \(they can't be specific due to client confidentiality\) and value from people that pledged to us directly over past months \(who didn't register with BS in time before registration closed\), factored by rise \(and fall\) in ETH value. To be clear, we are a bit overwhelmed by the level of interest, though we really appreciate the clear support. We will make an announcement on Monday about how we can proceed in the best interests of our community and project first and foremost. Please wait till then!

## [How does Omise's CEO communicate with his team if he doesn't speak english?](https://www.reddit.com/r/omise_go/comments/6ho1t1/how_does_omises_ceo_communicate_with_his_team_if/)

Since the video is recorded for posterity, he chose to speak Japanese because it's the language he is most fluent and expressive in. In person he speaks English \(just with a heavy Japanese accent\), and at the office, people go back and forth between Japanese, English, Thai, Chinese, and some others ... everyone can communicate just fine :\)

Come to our slack, Jun also chats in English there!

## [So for now OmiseGO will be run on the ethereum blockchain and than a switch to Omise's own blockchain?](https://www.reddit.com/r/omise_go/comments/6fyxji/so_for_now_omisego_will_be_run_on_the_ethereum/)

1. Simply put, it's expensive tech to develop and build business on, both in terms of financial commitment and community commitment. We spent over a year doing dedicated research on it in our Ethereum lab, before we decided a token sale would be the perfect way to both kickstart this push to commercial development and to build community.
2. Ethereum is great for checking our validator proofs and maintaining economic security, among other things, but it doesn't have the scalability we need now, and we can't wait for Casper to be ready _and_ advanced to the point where we can use it for our needs \(or the needs of decentralised exchange in general\).
3. From the sale document: 'The underlying OmiseGO network consists of cutting-edge crypto-economic constructions, including _an on-chain decentralized exchange built into consensus_ that bonds to Ethereum for economic security, and a high-volume payments network capable of wider uses, with the ability to scale via off-chain channels.' \([https://cdn.omise.co/omg/crowdsaledoc.pdf](https://cdn.omise.co/omg/crowdsaledoc.pdf)\)

A short answer is that Ethereum doesn't have an on-chain exchange built into consensus \(nor does anything else\). The OMG chain will. If you read the whitepaper, you may find that what you are looking at is the successor to Lightning Network. What Lightning is to Bitcoin, the constructions underlying the OMG chain are to Ethereum... this is not merely a rapid, high-volume payment channel system, it's a scaling strategy. Unlike Lightning though, it's not something that can be thrown on top of another blockchain.

The OMG chain will offer a kind of Ethereum scaling that goes beyond just what we \(Omise\) plan to use it for, while remaining very linked to Ethereum, which it will rely on for economic security \(and therefore, economically, OMG chain activity drives value to Ethereum and ETH\).

Thank you for your questions!

## [Has the contract for the ICO been posted?](https://www.reddit.com/r/omise_go/comments/6ioyk2/has_the_contract_for_the_ico_been_posted/)

The ICOAGE presale was meant to be China-oriented \(because thousands of Chinese buyers were facing obstacles registering their docs with Bitcoin Suisse for weeks\), but it was also meant to be open to a global audience. However, shortly before the sale started ICOAGE had problems with their email verification system necessary for non-Chinese users to pass the Sybil test \(non-trivial KYC\).

Allocating to Bitcoin Suisse and ICOAGE isn't a perfect system but it is unquestionably superior to the ways BAT, Bancor, or Status did it. We are able to avoid having a whale-dominated sale, and we are doing it without recklessly raising more money than we actually need and/or clogging the Ethereum network for days. Sorry you missed the contribution period but many people did; we did zero advertising, it has been pure word of mouth, and people who have been following us for a while \(since we announced at EDCON Paris\) were able to get in. Hope you can pick up some OMG later and come help run the network when it's time to use the token.

## [Fintech startup Omise raises $25M in ICO that bucks ‘money grabbing’ trend](https://www.reddit.com/r/CryptoCurrency/comments/6le02a/fintech_startup_omise_raises_25m_in_ico_that/)

Yes just to clarify, that $45M figure in crunchbase includes the $25M token sale that OmiseGO - the blockchain unit of Omise - just did. Otherwise, Omise has previously raised around $20M.

The $25M raised in the token sale will be used exclusively to build and maintain development for the OMG network, which will be a totally open and public \(permissionless\) blockchain that we won't control. The funds won't be used to fund other Omise operations outside of OmiseGO.

## [Thai Startup Omise Unveils Ethereum-Based Digital Wallet for the Unbanked](https://www.reddit.com/r/ethereum/comments/6l6ekw/thai_startup_omise_unveils_ethereumbased_digital/)

Yes, we are the first Japanese startup to do an Ethereum project. We've been involved with Ethereum since 2015, and actually we were one of the first 3 companies in any country to support Ethereum \(the other 2 were Microsoft and Wanxiang Group in China\).

Unlike in China and Korea, Ethereum hasn't really taken off yet in Japan.. however, we hope to be able to do our small part to help.

Though much of our business is also abroad, in other parts of Asia-Pacific, we had a Tokyo meetup in June and are trying to do a 2nd meetup sometime by the end of summer or beginning of autumn. Might have some special guests too \(hint: see who our advisors are\). Please stay in touch!

Article has some good points but one thing that should be pointed out is that, unlike several other projects, our product isn't for 'the Unbanked' ... it's for Unbank_ing_ the Banked!

From the beginning of our sale document \(found at [https://omg.omise.co](https://omg.omise.co/)\):

'At OmiseGO, “Unbank the Banked” means _disrupting banking services_: providing alternative financial and digital commerce tools for everyone without having to go through traditional banks, institutions and card networks. OmiseGO is a next-generation Ethereum-based financial platform enabling real-time, peer-to-peer value exchange and payment services agnostically across national jurisdictions and organizational silos, and across both fiat money and decentralized currencies; enabling true financial inclusion as well as freedom from monetary limits that are not aligned with the people's interests.

'Our target customers are _both the 73% of the Southeast Asian population who do not currently use or have access to formal financial services \(the so-called “unbanked”\) and the 27% of the population currently using formal financial services \(“banked”\)_ because it's been their best option until now.'

## [Omise is fairly well known company in SE Asia, especially Thailand where they are one of the biggest processors of online payments. My firm uses them but there’s nothing special about the service they currently provide. ~10% of western banks will flag a purchase for fraud if you make a purchase through their payment gateway so they are far from well established on the international scene.](https://www.reddit.com/r/CryptoCurrency/comments/6l6mez/has_anyone_looked_into_omisego/djsfjjl/)

A large number of Western banks will flag any activity abroad for fraud unless their card-holder notifies them in advance travel plans. Unfortunately we can't stop this practice, nor is it necessarily a good idea, as it does catch a lot of fraud that happens in high-risk places. All the more reason for us to develop better payment solutions in Asia-Pacific!

## [Joseph Poon, the guy behind Raiden network, is also working for Omise. Overall, very impressive team and in contrast to other ICOs they have a proven track record of running a successful business.](https://www.reddit.com/r/CryptoCurrency/comments/6l6mez/has_anyone_looked_into_omisego/djsgd9y/)

Almost! Joseph Poon is the guy who invented Bitcoin's Lightning Network \(original paper here: [https://lightning.network/lightning-network-paper.pdf](https://lightning.network/lightning-network-paper.pdf)\), and Raiden Network is the Lightning concept re-written for Ethereum. Both concern enabling a way to do secure, cheap, and super-fast transactions using 'payment channels', which allow network actors to transact do a lot of transactions off-chain then settle on-chain.

However, what Joseph is working on with us is different, and goes beyond payment channels: it's a decentralized exchange that happens in a blockchain itself \(in the consensus rules\). You could say that it's the successor to Lightning Network - a scaling solution that makes full use of Ethereum's scripting capabilities. See more here: [http://www.coindesk.com/striking-twice-lightnings-joseph-poon-takes-on-ethereum-exchange-project/](http://www.coindesk.com/striking-twice-lightnings-joseph-poon-takes-on-ethereum-exchange-project/)

Beyond that we can't say too much yet, more details later this summer!

## [Omise acquires online payment business Paysbuy from Thai operator DTAC](https://www.reddit.com/r/ethtrader/comments/6lo80a/omise_acquires_online_payment_business_paysbuy/)

We are definitely going hard.

We are also racing to make this the very first real, completely mainstream, product using Ethereum.

## [Very excited for what's to come for Omise, a big move to see them have more of a share in the online payments market. With a fantastic team and a great advisory board including Vitalik, Joseph Poon and Gavin Wood I'd definitely keep your eye on this one. For those wondering who Paysbuy is... Paysbuy is a payment processor and one of Thailand's 3 major payment service providers. Paysbuy is licensed by the Bank of Thailand to operate e-money.](https://www.reddit.com/r/ethtrader/comments/6lo80a/omise_acquires_online_payment_business_paysbuy/djvafsy/)

Paysbuy was also the first digital wallet service to open in Thailand. It's historic, as the takeover marks the moment that the first digital wallet service will also become the first digital wallet service to decentralize onto Ethereum.

## [McDonald's to start using OmiseGO as a payment channel!](https://www.reddit.com/r/ethtrader/comments/6n7sl2/mcdonalds_to_start_using_omisego_as_a_payment/)

From a community angle, we're launching OmiseGO to support Ethereum scaling and to provide a decentralised exchange, that is not only totally decentralised but also has _correct incentive alignment with Ethereum_ \(because it uses the Ethereum mainnet for economic security, OMG will not siphon off value from ETH like most other tokens have the potential to, but will rather support it\).

But from a business angle, we're launching OmiseGO to support Omise Payments and all existing stakeholders, including our existing and future merchants, such as McDonald's in other countries in Asia - McDonald's Thailand is just the start. Through OmiseGO, all Omise merchants will be able to seamlessly accept payments in multiple currencies, including ETH or BTC or other cryptos, without needing to know what their client is paying in.

And any other payment gateways, including Omise's biggest competitors, as well as global giants like Stripe or Cybersource, will benefit from using OmiseGO/OMG, and are welcome, no partnership or permission needed. The OMG chain will be an entirely public and permissionless network, connected to Ethereum.

## [Can anybody explain how OMG get their value?](https://www.reddit.com/r/ethtrader/comments/6n7sl2/mcdonalds_to_start_using_omisego_as_a_payment/dk7hoxe/)

OMG is a token that secures a public permissionless POS network, whose primary use case is to host a decentralised exchange for digital fiat and crypto alike. It is backed by significant mainstream financial firms in Asia who will use it as the backend for existing digital wallets - think Venmo, Google Wallet, WeChat Pay \(examples of digital wallets only\) - and for hosting digital fiat tokens for their existing merchant payment network.

OMG holders can use OMG to validate the network. If they validate a block correctly, they get paid the tx fees from that block \(but if they validate incorrectly, they get punished\). Like mining but without the need for hardware \(and if you do bad stuff the network doesn't accept, you don't burn expensive electricity, you lose money in other ways\).

## [So then, why purchase OMG Tokens when I can just purchase ETH?](https://www.reddit.com/r/ethtrader/comments/6n7sl2/mcdonalds_to_start_using_omisego_as_a_payment/dk7on1n/)

Because you may want help validate the OMG chain, and process transactions going across the network and through the decentralised exchange that's baked into its consensus layer. It's unlikely OMG will be used as a currency the way ETH has started to be \(though that wasn't the original intent for ETH either\).

## [I was not aware that Roger Ver was one of that gang.. did i miss out ? as he is listed as an adviser as well](https://www.reddit.com/r/ethtrader/comments/6n7sl2/mcdonalds_to_start_using_omisego_as_a_payment/dk7qyxe/)

Roger Ver got into crypto to help bring about the rise of fair money, not to advance any particular clique or faction. He threw his support behind OmiseGO because the project isn't about Bitcoin vs. Ethereum vs. others, it's about fair finance for everyone. Quoting from [https://omg.omise.co](https://omg.omise.co/):

"The OmiseGO network is intrinsically agnostic between fiat and decentralized money: as far as adoption and usage go, the system is constructed so that the best currencies will win."

That's why Roger joined us.

## [Bitfinex strikes again: OmiseGO \(OMG\) trading to go live today!](https://www.reddit.com/r/ethtrader/comments/6n94q3/bitfinex_strikes_again_omisego_omg_trading_to_go/)

Bitfinex listing came as a real surprise to us but a very welcome one. Judging by their announcement, they are in this for the long. They clearly understand the benefits of the tech and financial relationships we're developing, so we really welcome their support.

## [Funny that two of the recent ICOs who were mostly sold in presale started trading in bitfinex, while few of the "open" ICOs have. Santiment and OmiseGo. It's almost as if bitfinex bought the presale and is pumping the coins. Buyer beware](https://www.reddit.com/r/ethtrader/comments/6n94q3/bitfinex_strikes_again_omisego_omg_trading_to_go/dk7s1o2/)

I think Bitfinex have far better things to do than try to pump OMG, especially since we refused to raise more than 25M.

Ps. we sold in 'presale' for the anti-Sybil properties, and the sale was totally open and public.

## [More on Omise's Paysbuy deal. A deal we should not ignore.](https://www.reddit.com/r/ethtrader/comments/6nhtqe/more_on_omises_paysbuy_deal_a_deal_we_should_not/)

Wow, you really did post it here. Ok, so for redditor context, that would be like if a foreign country's Stripe, or Square, bought a Venmo connected to the userbase/user data of AT&T or T-Mobile, and said, "Hey we're going to make this an Ethereum-based thing now."

## [I understand and agree with the value of the service and project as it is a platform for interoperability between different currencies, fiat and digital, but what use case does the actual OMG token have?](https://www.reddit.com/r/omise_go/comments/6p1teh/new_all_time_high_omisego_price/dkn2qbi/)

Staking token, used for bonded validation of the \(decentralised exchange happening in the\) network.

## [If OmiseGo successfully reaches the "unbanked" in Southeast Asia, what do you expect the share of transaction fees for OMG holders to be?](https://www.reddit.com/r/omise_go/comments/6pq421/if_omisego_successfully_reaches_the_unbanked_in/)

It depends on the amount \(in tx fees\) that it will take for validators \('miners'\) to include transactions in a block in a reasonable time, and is dynamic, which is to say that it depends on the validators, like bitcoin or Ethereum mining depends on the miners, the network congestion, the transaction size, etc, and will probably constantly adjust. More specific than that is near impossible to model at this point, and won't be in OmiseGO's control.

In short, it's too early to say.

## [Depends on the transaction sizes, right? Or are you commenting on using your tokens to validate / confirm transactions? That's something I'm not very well educated in. Can you elaborate on how that works? Do we just hold our coins in a wallet, or something?](https://www.reddit.com/r/omise_go/comments/6pq421/if_omisego_successfully_reaches_the_unbanked_in/dkrim6j/)

No, a validator would have to stake their coins by putting them into bonded deposits \(as a kind of insurance against validator misbehaviour\). You lose money if you try to cheat the network and get caught.

## [You know I really don't...when ride can cost any where from 75c \(USD\) to whatever...I don't see a taxi driver pulling out a phone that he may or may not have that supports OMG to receive payment. A lot of people here do have the latest tech...but would you catch a ride and assume driver takes OMG or what ever form of digital currency? Yes most people ask price before they accept rides...but now have to ask if they accept D.C.?](https://www.reddit.com/r/omise_go/comments/6rrdn0/my_thoughts_for_omg_as_a_resident_in_thailand/dl7v8tz/)

Most users won't know their everyday mainstream wallet backend is running on the OMG network. 

## [Seems many fail to grasp OMG is not going to be a global ewallet P2P system. They hope to be able to provided their customers \(merchants\) the ability to launch their own ewallets and have them be legally recognized in their country of operation. If this was easy, we'd all be using Alipay or Paytm by now - but clearly the hurdles of nation state regulations make this a country by country challenge. As Omise has a base in Thailand - we'll see their product here first, but I'd expect slow goings in securing the rights to offer this service in new countries.](https://www.reddit.com/r/omise_go/comments/6s3qt4/great_short_read_of_why_omise_built_omise_go/dl9vls4/)

National regulations aren't really an obstacle for OmiseGO, as they're for prospective wallet providers to handle themselves, and more than enough already have \(that's actually part of the problem!\). From a wallet provider's perspective \(especially a pre-existing one\), the product is mostly a backend, facilitating interoperability and removing the limitations around their systems. The wallet framework is a nice-to-have; the real gem is the blockchain and the decentralized exchange inside it, finally tying together crypto and mainstream online consumer money, and allowing for mass adoption of both.

## [Imagine a world where all token sales did this. That would be pretty cool.](https://www.reddit.com/r/ethtrader/comments/6s57ob/omisego_air_drop_update_free_omg/dla43xk/)

We have already encouraged several other major sales to do this. The response was very positive. Keep watching :\)

## [I looked at the whitepaper briefly, and it seems to be some kind of decentralized exchange concept but I don't really understand. Can anyone eli-5 what problem they are solving and how they are solving it with omisego?](https://www.reddit.com/r/ethtrader/comments/6s57ob/omisego_air_drop_update_free_omg/dla88ff/)

In short, and not an exhaustive list:

1. Problems being solved on the crypto side:

* Scalable decentralized exchanges don't exist yet. Preliminary ELI5 on our unique/brand new approach here \(full paper coming very soon\): [https://www.coindesk.com/striking-twice-lightnings-joseph-poon-takes-on-ethereum-exchange-project](https://www.coindesk.com/striking-twice-lightnings-joseph-poon-takes-on-ethereum-exchange-project)
* Fiat&lt;&gt;crypto exchange is hard to decentralize because secure, decentralized fiat is hard to make and distribute.

1. Problems being solved on the mainstream side:

* Online money is hard to access, credit-based money is not currently suitable for most communities \(high fraud/expensive\), coordination problems between online money issuers prevent network effect and mass adoption.
* Transactions are more difficult and expensive than they should be, especially for low value transactions.
* Full reserve banking is not available to most depositors.

## [Really cool. I hope OMG is successful. This is another instance where exchanges will reap big reward for clients holding their assets in the exchanges' wallet. I understand the exchange's stance of not supporting an endless list of tokens, but not distributing air dropped tokens to the clients who's assets earned them is disappointing. Just another in a long list of reasons not to HODL on an exchange.](https://www.reddit.com/r/ethtrader/comments/6s57ob/omisego_air_drop_update_free_omg/dlacp3h/)

We expect that exchanges have a strong incentive to distribute OMG to their ETH holders, they make money in trading fees! So if it's technically feasible for them \(might depend on how they have their ETH deposit system set up\), they will probably do it. But this is up to them and their users, not the project owner.

## [Expect a certain amount of inflationary pressure \(ie downward pressure on the sell\) from this. I don't think it will be much though, and I do think it'll be rather transitory. At the very least, this is excellent marketing at the expense of current holders. At best, it's widespread recruiting which will yield more investors, greater liquidity, and wide\(r\) spread adoption.](https://www.reddit.com/r/ethtrader/comments/6s57ob/omisego_air_drop_update_free_omg/dlag0zt/)

We expect the pressure is unlikely to be but barely noticeable, if even that. At today's prices, the majority of people will get airdropped an amount of OMG worth cents. Very few people will get more than ten dollars, and the only people who will are likely to be people for whom ten dollars is not worth selling.

## [Vitalik knows whats up ;\)](https://www.reddit.com/r/omise_go/comments/6t82b8/vitalik_knows_whats_up/)

[Sticker photo not fake.](https://m.imgur.com/a/XxTXn)

But don't read too much into it. Of course he supports us, we're the Plasma decentralized exchange, he's co-author of our paper. But please judge OmiseGO by its total merits, not just by who's got our sticker on their laptop. We guarantee there's a lot more going on! The tech is real, the biz dev is real. We don't do aggressive marketing \(or any marketing at all, to tell the truth\). We don't need to; OmiseGO isn't hype, or built on derivative tech. We are fiat-and-crypto decentralized exchange backed by a multinational mainstream payment company's business development and financial integration, pioneering the use of the flagship Ethereum 2nd layer scaling solution.

We will deliver something first class: a public Plasma network that is open and scalable and useful not just to OMG token holders but to the entire ETH and crypto community, fully justifying the purpose of an ETH token sale. Further, the work we will do on top of it will be useful to the entire populations of the countries we can reach, serving millions in their everyday lives, bringing crypto to the masses and bringing the masses to crypto.

And we're not leveraging legacy centralized tech like VISA/MasterCard, we're using Ethereum to replace it. With a decentralized solution that is almost ready to go to market, and run by you.

Forget the sticker!





