# Plasma Update \#3

The research team has been in Warsaw for some DEX product planning sessions. There will be a more thorough DEX update in the coming weeks; but we'll include a preview here since that's where we spent most of our time, and this update is a little lighter on Plasma as a result!

## DEX Product Sessions

When it comes to decentralized exchange design, it’s important to find the right balance between speed, efficiency, and decentralization. Centralized exchanges are very fast and efficient, but they’re not transparent \(or decentralized\). Existing decentralized exchanges are relatively slow and inefficient. Although we can solve some of these problems with Plasma, we still need to design something that fits the vision of the OMG network.

We spent the last week in Warsaw with our production team and expert designers of traditional exchanges. The primary goal of these sessions was to better understand how different exchange designs can impact things like liquidity and user experience. We came out of the week with a phased development/research plan for several DEX designs. This iterative process will allow us to get off the ground quickly and start processing trades, with each "phase" adding more features and complexity.

The first of these designs, [limited custody](https://github.com/omisego/elixir-omg/blob/develop/docs/tesuji_blockchain_design.md#custodial-exchange), has already been specified. In limited custody, a centralized exchange has custody of funds only during the order matching and execution process. This minimizes risk of funds being lost but allows flexibility in order types and fee structures while operating on Plasma MVP. Limited custody is a sort of "training wheels" phase, allowing us to take a significant step toward decentralization without drastically impacting the user experience.

### Proof of Stake Research

We’ve spent months researching the requirements for a good Plasma PoS mechanism. Plasma gives us some cool things that we can take advantage of, like not needing to worry about forks. It also gives us some restrictions, like making sure everything works inside an Ethereum smart contract. We know of a few key components that we’ll need no matter what, and we're ready to start writing and publishing smart contracts that implement these components.

### Events

We created the [NYC Plasma Meetup](https://www.meetup.com/NYC-Plasma-Meetup/) group last week! Kelvin is planning a few Plasma events in NYC. These events will generally be very small \(~10 people\) Plasma 101 or deep-dive sessions. We'll even do some open research sessions so you can see what Plasma research is all about! More information about these events should pop up on the meetup page soon.

### Plasma Implementers Call \#14

The video for the most recent call has not been released yet - we'll publish our notes in a separate post once the call is posted.

EDIT - clarification regarding product section:

The plan that was produced at the workshop does not represent the commencement of DEX research and development - research and development have been heavily underway since the initial token sale \(so yes, we were already working on DEX design in April\). This is a plan for a phased rollout of iterative implementations: how do we take everything that already exists, everything that we’re working on, and everything that’s planned and fit it all together in the smoothest and most efficient way we can?

Research/development in the last 6 months has been most heavily focused on the Plasma chain itself. Plasma is uncharted territory, and we need to make sure that our implementation is secure and robust. This was \(and will continue to be\) the lion's share of design work.

The design of our Plasma chain fundamentally impacts the actual DEX design and implementation. Now that our chain is close to being finalized, the eWallet is close to being blockchain-ready, and our DEX designs are solidified, we're circling back to how we fit all of these pieces together. We've had Limited Custody ready to go for a while, but needed to solidify some things around the Plasma design before we could be sure that it was the correct next step and actually put it into action.

There also seems to be some clarity needed about the OMG DEX mechanism vs the Omise exchange subsidiary. The DEX mechanism, which was the subject of last week’s workshop, is purely infrastructure. GO.exchange is a user facing platform which is currently under development by a separate team, under a separate entity.

