---
description: >-
  Just in case people don't have time to watch the video, I have written a brief
  summary of Kasima's presentation here:
---

# The path to a more viable plasma

Just in case people don't have time to watch the video, I have written a brief summary of Kasima's presentation here:

Kasima Tharnpipitchai runs through a brief overview of the plasma architecture, outlining that it is a layer 2 scaling solution for Ethereum, and that it is still heavily under research. He shows graphically how the plasma chain will interact with the root chain contract on Ethereum, and includes a simple overview of deposits and exits. Plasma is then split into two 'flavours' as he calls them, one being **fungible** and the other **non-fungible**.

**Non-fungible plasma** is outlined as the root chain contract holding a portion of value, that is then represented on the plasma chain as a token, this cannot be split up and is therefore \(at this moment in time\) not suitable for the OMG DeX architecture.

**Fungible plasma** is outlined as the root chain contract holding a single allocation of value, that will be shared by everyone on the plasma chain, in Omisego's case, this value will be allocated by UTXOs \(unspent transaction outputs\). The current fungible plasma specifications are **Minimal Viable Plasma** and **More Viable Plasma**.

The characteristics of **Minimal Viable Plasma** are:

* Fungible
* It is a single plasma chain
* Transacts using UTXOs
* Exit priority- this ensures safety of funds on the plasma chain, allowing for exits back to the root chain: Ethereum. However, this requires a user to constantly watch their funds, and would require them to initiate an exit protocol
* Uses confirmation signatures- Kasima refers to this as a 'pessimistic setup' whereby all transactions are assumed invalid until they are included in a block and then signed off by the sender.

The characteristics of **More Viable Plasma** are the same, with the exception of the final two \(and a small modification to exit priority\), which are:

* No confirmation signatures are used- Kasima refers to this as an 'optimistic setup' whereby all transactions are assumed valid when sent.
* In-flight exit game- this allows people to exit safely if they are unsure their transaction has been included in the chain.

Finally, Kasima runs through the **next steps for plasma** and what the aims are for the immediate future:

* More work on mass exits for the fungible version of plasma.
* More scale, including more plasma chains within chains.
* Developing the next stage of More Viable Plasma, possibly called EMVP \(Even More Viable Plasma.\)

