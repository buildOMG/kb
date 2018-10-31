# Plasma

{% hint style="warning" %}
_Please note: the OMG Network is still in development, and some details cannot yet be included. This knowledge base will be revised regularly to include updates and additional details._
{% endhint %}

## **Plasma — A Blockchain Scalability Framework**

Plasma is a framework for building scalable blockchain applications without sacrificing security. A plasma chain is its own blockchain and can have whatever functionality and consensus mechanism the builder desires. The defining feature and limitation is that all state transitions must be tracked on the root chain \(we’re using Ethereum as our root\); but rather than every individual transaction being submitted to the root chain, many transactions can be squished together and submitted to the root chain as a single state change. Users can exit funds from a plasma chain onto the root chain whenever they want, and need to do so in the event of a malicious child chain to recover their funds.

**Plasma chains are not side chains.** The biggest distinction is plasma’s exit mechanism. Whereas users of a side chain must rely solely on the honesty and security of the side chain, users of a plasma chain have funds secured by the chain’s consensus as well as an interactive exit game that detects malicious behavior. In other words, when a side chain breaks, state is lost; when a plasma chain breaks, state is exited but remains intact.

OmiseGO is researching and developing a specific implementation with the required properties and functions for a decentralized exchange, but plasma design and implementation has been a very collaborative effort across the Ethereum community, with many different designs being explored and implemented by many different teams. Just for reference, here are some of the designs being worked on:

* [MVP \(Minimal Viable Plasma](https://ethresear.ch/t/minimal-viable-plasma/426)\): The MVP specification lays out a utxo payments blockchain.
* [MoreVP \(More Viable Plasma\)](https://ethresear.ch/t/more-viable-plasma/2160): Makes security and UX improvements to the MVP design including removal of confirmation signatures and adds the ability to exit inputs as well as outputs.
* [Plasma Cash](https://ethresear.ch/t/plasma-cash-plasma-with-much-less-per-user-data-checking/1298): Assets deposited into a Plasma Cash chain are represented as non-fungible tokens \(NFTs\). Blocks are different from Plasma MVP, in that each Plasma Cash block allocates a slot for each token. When a token is transacted, a record of that transaction is places at the corresponding slot. Plasma Cash removes Plasma MVP’s exit time constraints and reduces user storage and computation requirements by only requiring users watch their own value.
* [Plasma XT](https://ethresear.ch/t/plasma-xt-plasma-cash-with-much-less-per-user-data-checking/1926): Introduces checkpointing from the plasma chain to the root chain, which allows for periodic finalization of a coin’s ownership in order to reduce the amount of data which must be stored and verified by each user to limit the storage and computation requirements per coin.
* [Plasma Debit](https://ethresear.ch/t/plasma-debit-arbitrary-denomination-payments-in-plasma-cash/2198): A proposal for enabling partial balances \(spending only part of the value of a non-fungible token\) in a Plasma Cash construction by making every token a payment channel between the user and the chain operator.

