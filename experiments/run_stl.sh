#!/bin/bash

# Run MNIST experiment for each individual dataset.
# For each anomalous digit
for m in $(seq 0 2)
do
    echo "Manual Seed: $m"
    for i in $(seq 0 9)
    do
        echo "Running MNIST, Abnormal Digit: $i"
        python train.py --dataset stl10 --isize 96 --nc 3 --niter 500 --abnormal_class $i --manualseed $m --name stl$i_$m
    done
done
exit 0
