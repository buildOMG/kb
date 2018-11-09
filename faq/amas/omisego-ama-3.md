# OmiseGO AMA \#3

## The [performance dumps](https://github.com/omisego/elixir-omg/blob/release/v0.0.1/docs/perf_test_result_dumps.md) in the Elixir OMG Github link given above, shows close to "4000 TPS" on a 4 core Intel 4.4 ghz machine. Can you say if there is a good chance of this TPS being possible for the release?

> Here are a few comments from the Plasma team:
>
> * These results are just dumps of a very particular perf test run. They provide more of a reference point and provide a rudimentary way to track changes of performance, in case we do something to cause a sudden, unexpected drop. They also don't \(yet\) take into account processing invalid transactions and other duties the child chain server must do.
> * These are the results of a child chain server running. A more important factor is how many TPS can a Watcher effectively handle to catch up and sync within reasonable time. One shouldn't exceed a certain TPS rate on the child chain server, that would make the catch up difficult.
> * On the other hand, these perf tests didn't really strive to max out the performance, so seeing 4K TPS and keeping it at this level was enough information to keep going. Watcher performance tests and more accurate child chain performance tests are yet to come.
> * We're rather aiming at gradually reaching this kind of TPS, so most likely one should expect the overall performance to be lower than that figure, when first release comes.

## Will Omise and OmiseGO team put any resources into marketing the product upon launch?

> Definitely. We've got a strategy in place, and upon launch OmiseGO will be allocating more resources towards marketing the product. Our primary focus will be to expand use-cases, onboard users and increase transaction volume.

## What are all of the reasons and incentives for eWallet adopters to migrate from using the local ledger to using the OMG Network?

> As we see it, one of the primary advantages of migrating to the OMG Network would be network effect: Businesses that have onboarded have already expressed their desire to migrate to the blockchain. With more businesses on the blockchain, there will be greater network effects and more incentive to migrate.
>
> **Some other advantages/benefits:**
>
> 1. _Seamless experience_ - Get paid in any currency the network supports, making users’ lives \(and the providers’\) easier and incentivizing users to go to places that support the OMG network.
> 2. _Currency agnostic_ - The ability to accept both cryptocurrencies and fiat.
> 3. _Transact safely_ - Security from the blockchain.
> 4. _Interoperability_ - Users can trade assets from different blockchains protocols like Bitcoin.
>
> This is the short list. If you can think of others to add to the list, let us know in the comments and we'll include it in our documentation. If you have additional questions please tag [/u/omise\_go](https://www.reddit.com/u/omise_go), [/u/askOMG](https://www.reddit.com/u/askOMG) or [u/tdnzt](https://www.reddit.com/user/tdnzt) on the eWallet team.

## We always hear about the huge number of transactions per second that the OMG network will be able to handle once it’s fully developed, but my question is how quickly will each of the individual transactions actually be validated and completed via the network? I asked this in one of the first town halls, and the answer was something along the lines of “it will seem basically instantaneous”, but does that mean &lt;1 second? &lt;5 seconds? &lt;30 seconds?

> The answer to this one is still under discussion.  
> **TL;DR It depends.**  
>   
> Kelvin:  
> _Probably around 5-30 seconds is accurate, maybe closer to 15-30. Depends on a lot of factors. My guess is we'll start block time at 15s. So not less than that._  
>   
> Pepesza:  
> _Finality is the same as in Ethereum._  
>   
> Piotr responds to Pepesza saying:  
> _It depends on the trust model, and whether it's PoA or PoS and how often \(or according to what rules\) blocks get submitted and submissions mined. Mind, that the question isn't limited to Tesuji, but I think more general. "Same as Ethereum" applies to "no trust in operator/PoS network" and plasma blocks being mined_ _**every**_ _Ethereum block always._

## Some [eWallets](http://fintechnews.sg/24452/mobilepayments/singtel-via/) will choose one solution for interwallet services and other eWallets will choose another solution\(each interwallet solution could actually start by forming it's own eWallet group, consortium, alliance, etc. see below for VIA mobile alliance in Singapore\). This will fragment the eWallets into two or more groups, disabling interwallet services across groups. This could make all eWallets gravitate towards one dominant interwallet solution, so that one supergroup is formed. This could become a winner takes all, monopoly position. That means OmiseGO eWallet SDK will either have to become a monopoly or lose.  It would be better if interwallet solutions could coexist thru some tech\(OMG eWallet SDK could encapsulate other interwallet solutions\) so that eWallets can choose the interwallet solution they prefer based on features and quality. This could provide a higher chance of success for OmiseGO. Also OmiseGO might need to start forming an alliance of eWallets for it's interwallet solution.  What is OmiseGO's solution to this in the wake of upcoming interwallet solutions like UPI of India, VIA mobile alliance of Singapore, etc.?

> The eWallet could potentially provide compatibility to other interwallet solutions. For now though, we'll be focusing on Ethereum/our blockchain as the interop method. Currently, we think that an open network will have greater network effects in the long term, compared to a federated model like these interwallet solutions.

## 



