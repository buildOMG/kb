# Proof of Stake \(PoS\)

{% hint style="warning" %}
_Please note: the OMG Network is still in development, and some details cannot yet be included. This knowledge base will be revised regularly to include updates and additional details._
{% endhint %}

Unlike Proof of Work \(PoW\), in which a miner or validator has to expend an enormous amount of computing power in order to mine a block, Proof of Stake \(PoS\) requires a validator to "stake" their tokens in order to validate: essentially, put their tokens in a security deposit. If they validate actively and honestly they are rewarded; if they behave dishonestly they lose tokens. Both systems are designed to make faulty behavior cost more than it’s worth:

The brute computational strength needed to mine a block in a PoW system represents both a substantial investment in hardware and a great deal of energy consumed. The first miner to demonstrate correct PoW on a mined block receives a block reward as well as transaction fees associated with that block. That investment is a sunk cost regardless of the outcome; miners who misbehave \(e.g. submitting incorrect proofs\) will expend resources and see no returns, while honest ones have a chance of collecting block rewards that make them their money back and then some.

In PoS, we skip all the hardware and burned energy. Validators just put their investment \(in the form of tokens\) directly into the system, get rewarded in the form of transaction fees for non-faulty behavior and are penalized by the protocol for faulty behavior. That penalty can take the form of either hard slashing \(loss of all staked tokens\) or soft slashing \(loss of returns\). OMG will use soft slashing in its initial Honte implementation.

Returns are distributed in proportion to the number of tokens staked. However, PoS still represents a more equitable system in that returns are directly proportional to your stake. In PoW, the more computing power you have, the cheaper it is to add more - and since computing power is what earns you mining rewards, this leads to people with lots of money collecting disproportionately larger returns. In PoS, a dollar is a dollar no matter how many of them you have.  


