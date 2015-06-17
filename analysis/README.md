Can miners exploit a block size increase?
===

Summary
---

* TL;DR As long as there is no network partition, I didn't find a scenario yet where a miner can profit by creating bigger blocks.
    * Note that the model includes latency but not bandwidth.
      * Also, it does not model fees.
    * See also [Pieter Wuille's simulator](https://github.com/sipa/bitcoin-net-simul) which includes more parameters (such as fees and bandwidth, etc.).

* Scenarios
    * big vs. small hashrate miners
        * all miners create big blocks: big miner wins
        * only big miner creates big blocks: big miner loses
    * well vs. poorly connected miners
        * miners of big blocks lose
    * there are two groups which are well-connected internally, but are only connected to each other through a poor connection
        * group with more hashrate profits if they create big blocks
        * but individual miners in the big group lose and are incentivised to create their own connection to the other group
    * network not fully connected
        * miners of big blocks can profit

All miners create big blocks
---
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/histogram.png)
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/varying_latencies.png)

Small miners create small blocks
---
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/histogram_small.png)
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/realistic_hashrates_small.png)

Well vs. poorly connected miners
---
**Poorly connected create big blocks:**
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/poorly_connected_big_blocks.png)

**Well connected create big blocks:**
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/poorly_connected_small_blocks.png)

Two Groups well connected internally but connected to each other with a single poor connection
---
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/sipa.png)

**Miner 1 opens a new connection to the small group:**
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/sipa_traitor.png)

One big miner and two partitioned groups
---
![](https://raw.githubusercontent.com/jonasnick/bitcoin_miningsim/master/analysis/plots/partition.png)
