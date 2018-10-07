---
description: >-
  David Knott's Decentralizing Consensus:
  https://www.youtube.com/watch?v=iOAD3IpOJ0A
---

# Decentralizing Consensus

David Knott's _Decentralizing Consensus_: [https://www.youtube.com/watch?v=iOAD3IpOJ0A](https://www.youtube.com/watch?v=iOAD3IpOJ0A)  
[/u/jager\_master](https://www.reddit.com/u/jager_master)

**Decentralizing consensus**

**People and blockchains**

David Knott introduces the concept of social networks, highlighting the different levels of trust that exist interpersonally within a diverse population. David then contrasts this setup with that of a blockchain, emphasizing that anyone running a full node has the exact same information as anyone else within the network, meaning that a person's biases, life experiences and consequent trust levels are irrelevant in order for them to come to consensus. **Consensus** is defined as the process of network participants agreeing upon a proposed truth \(data\) and adding this to their respective chains.

**Proof of Work** is then introduced as the first consensus mechanism, used currently by Bitcoin and Ethereum \(although Ethereum plans to transition to Proof of Stake over the next few years.\) PoW has the following **drawbacks**:

* It benefits economies of scale, meaning it rewards greater numbers of mining hardware disproportionally when compared to smaller numbers.
* Miners are only rewarded once they mine a new block, this creates volatility in the reward distribution within the mining pool.
* Mining hardware is somewhat difficult to set up and maintain, it requires a level of knowledge far beyond that of the average person.

The aforementioned drawbacks have caused a lack of decentralization within the mining community of Bitcoin, wherein a large percentage of mining hardware is concentrated in the hands of a few companies; this therefore has the potential for exploitation in the form of a 51% attack and aids in the negation of the most attractive **benefits of decentralization**:

* Decentralized networks should be more resilient to accidental failures.
* There are greater challenges to attacking said networks, such as difficulty colluding.

Decentralization however, is not binary, in the sense that a project is not either decentralized or centralized, there exists a spectrum of possibilities with various factors baring influence; in order to judge the level of decentralization that exists within a project/network, is it vital to consider the following **points of failure**:

1. **The client software**- who is responsible for writing the code that miners/validators are running, and how many people are involved; if the number is significantly low, then there is a strong risk of failure.
2. **The location of nodes**- due to the nature of decentralized networks, and the potential for such a paradigm shift across various industries, there are significant hurdles in regards to adoption in the form of jurisdictional regulation. If a project's nodes are concentrated in a single geographical area, and regulation is then implemented that outlaws running said nodes, failure is a very likely possibility.
3. Who chooses the direction and frequency of **software upgrades**. In order to maintain balance within the community, it is beneficial for many people to dictate the direction of future upgrades, as opposed to one single group.
4. **Consensus participation**- this refers back to the distribution of miners/validators and the potential for collusion around what data is included in future blocks. If there is poor distribution, there is a possibility for fraudulent activity.

**Proof of Stake** is introduced as the 'next generation' of consensus mechanism \(soon to be adopted by Ethereum.\) The basic **qualities** of PoS are:

* Rewards are proportional to stake- meaning larger stakes are not rewarded disproportionally and there exists incentive for staking regardless of initial investment.
* Expensive hardware is not a prerequisite to validating, it is much easier to bootstrap with a small initial investment, leading to greater decentralization in the form of validator distribution.

Some **drawbacks** of Proof of Stake are that validator nodes are difficult to setup, and minimum staking requirements may out-price a portion of the population, leading to incentivized custodial staking services. In order to counteract centralization caused by this minimum fee, threshhold staking pools have been proposed, allowing people to come together and meet the minimum requirements via their accumulative total investment. The main **challenges faced in setting up a validator node**are:

* Private key management, as cold storage is not a possibility, this can be alleviated by usage of a hardware wallet within a secure facility.
* Constant network access is required, and validators will often be penalized when they do not keep \(close to\) 100% up time.
* Denial of service protection. In this case, a nefarious actor will not require a private key to launch an attack, they will simply be able to attack the validator node directly, or locate the node that is in correspondence with the validator node and flood it indirectly.

In order to overcome these difficulties, it would be beneficial to standardize the validator setup process, however it is important to avoid completely standardizing the software used, as this can lead to cascading failures. Hopefully, in time, David envisages this process becoming easier and leading to standardized staking becoming the norm within the blockchain space, allowing for the emergence of a P2P layer, enabling staking regardless of a person's economic status.

