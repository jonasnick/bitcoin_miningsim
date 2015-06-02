#!/bin/bash

echo "latency,hashrate, shares"> $1

runs=1000

run () {
    for i in {1..1000}
    do
        nonce=$((1000*40 + $i + $2 * $runs))
        #nonce=$RANDOM
        result=$(../mining_simulator --blocks 43200 --config ./mining_realistic_dist.cfg --rng_seed $nonce --latency $2) 
        hashrate=$(echo "$result" | sed -n '4p')
        shares=$(echo "$result" | sed -n '5p')
        echo $hashrate
        echo $shares
        for i in {5..15}
        do
            ihashrate=$(echo $hashrate | cut -d' ' -f$i-$i)
            ishares=$(echo $shares | cut -d' ' -f$i-$i)
            echo "$2,$ihashrate, $ishares" >> $1
        done
    done
}

run $1 1
run $1 20
