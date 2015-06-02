#!/bin/bash

echo "latency,shares"> $1

runs=1000

run () {
    for i in {1..1000}
    do
        nonce=$(($i + $2 * $runs))
        shares=$(../mining_simulator --blocks 43200 --config ../mining_30_dense.cfg --rng_seed $nonce --latency $2 | sed -n '5p' | cut -d' ' -f5-5)
        echo "$2,$shares" >> $1
    done
}

run $1 1
run $1 5
run $1 10
run $1 20
run $1 30
