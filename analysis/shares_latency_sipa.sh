#!/bin/bash

echo "latency,nr,shares"> $1

runs=100

run () {
    for i in {1..100}
    do
        nonce=$(($i + $3 * $runs))
        result=$(../mining_simulator --blocks 86400 --config $2 --rng_seed $nonce --latency $3)
        hashrate=$(echo "$result" | sed -n '4p')
        shares=$(echo "$result" | sed -n '5p')
        for i in {5..11}
        do
            ihashrate=$(echo $hashrate | cut -d' ' -f$i-$i)
            ishares=$(echo $shares | cut -d' ' -f$i-$i)
            echo "$3,$(($i - 5)),$ishares" >> $1
        done

    done
}

run $1 $2 1
run $1 $2 20
