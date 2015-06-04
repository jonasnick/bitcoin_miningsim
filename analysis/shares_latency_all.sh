#!/bin/bash

echo "latency,shares"> $1

runs=1000

run () {
    for i in {1..1000}
    do
        nonce=$(($i + $3 * $runs))
        shares=$(../mining_simulator --blocks 43200 --config $2 --rng_seed $nonce --latency $3 | sed -n '5p' | cut -d' ' -f5-5)
        echo "$3,$shares" >> $1
    done
}

run $1 $2 1
run $1 $2 5
run $1 $2 10
run $1 $2 20
run $1 $2 30
