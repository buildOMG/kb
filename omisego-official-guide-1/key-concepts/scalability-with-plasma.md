# Scalability with Plasma

{% hint style="warning" %}
_Please note: the OMG Network is still in development, and some details cannot yet be included. This knowledge base will be revised regularly to include updates and additional details._
{% endhint %}

## Scalability with Plasma

Plasma is a framework for scalable decentralized applications, conceived by Lightning Network creator Joseph Poon and Ethereum creator Vitalik Buterin. We will provide a brief overview here; the full whitepaper can be found at http://plasma.io/.

OMG is being built as a scaling solution for decentralized nance on Ethereum, using the Plasma architecture. Plasma structures blockchain computation into MapReduce functions and uses a combination of proof-of-stake token bonding, fraud proofs to reduce the costs of computation, a withdrawal design to efficiently counter network attacks, and the network security provided by Ethereum as the root chain to safely enable unprecedented transaction and on-chain exchange processing speed and scale.

This is achieved by allowing many “child chains” to run on top of the main blockchain, each interacting with the root chain with its own customized set of smart contracts. Computation happens primarily within these child chains, and only state proofs \(tiny data packets, essentially snapshots of the balances within the child chain\) are committed to and enforced by the root chain. This means that transactions can be processed instantly o-chain, but are ultimately stored on and enforced by the Ethereum root chain.

