# Decentralized Exchange Layer

{% hint style="warning" %}
_Please note: the OMG Network is still in development, and some details cannot yet be included. This knowledge base will be revised regularly to include updates and additional details._
{% endhint %}

OMG’s DEX layer provides the back end for easy exchange between digital assets on the OMG Network.

We recently put out a [post](https://blog.omisego.network/omg-dex-update-6245812a7b2d) outlining the design for the initial DEX implementation. In its initial phases, the OMG DEX will serve as the base layer for a collection of venues \(platforms where orders to trade digital assets are arranged and executed\) that perform order matching outside of the OMG Network consensus, with provable on-chain settlement on the OMG network. In other words, order matching is performed off-chain and any order that is either settled or canceled will be processed as a transaction on the OMG Network, and have to pay fees accordingly.

The first iteration of the DEX will use a construction we’re calling Restricted Custody, which we settled on as the best compromise between giving users total control of their funds for the majority of the time and keeping as many transactions as possible on chain, without sacrificing liquidity. Users have full custody until they place an order, at which time custody is transferred to the venue until the order is either filled or cancelled. During the time that venues have custody of user funds on the OMG DEX, user funds still have an extra layer of protection in that an attempted malicious act by the venue \(or a hacker\) can be blocked by the operator or by the child chain consensus.

![](https://cdn-images-1.medium.com/max/1600/0*IPdKM2bkk-Uzio55)

