shares_latency_20_vs_1.csv: shares_latency_20_vs_1.sh
	./shares_latency_20_vs_1.sh shares_latency_20_vs_1.csv

shares_latency_all.csv: shares_latency_all.sh
	./shares_latency_all.sh shares_latency_all.csv ../mining_30_dense.cfg

shares_latency_all_small_miners.csv: shares_latency_all.sh
	./shares_latency_all.sh shares_latency_all_small_miners.csv mining_30_dense_small_miners.cfg

shares_latency_realistic.csv: shares_latency_realistic.sh
	./shares_latency_realistic.sh shares_latency_realistic.csv mining_realistic_dist.cfg

shares_latency_realistic_small_miners.csv: shares_latency_realistic.sh
	./shares_latency_realistic.sh shares_latency_realistic_small_miners.csv mining_realistic_dist_small_miners.cfg

shares_latency_all_small_miners_40.csv: shares_latency_all.sh
	./shares_latency_all.sh shares_latency_all_small_miners_40.csv mining_40_dense_small_miners.cfg
