#!/bin/bash

# Run MNIST experiment for each individual dataset.
# For each anomalous digit
for m in $(seq 0 2)
do
    echo "Manual Seed: $m"
    for i in $(seq 0 9)
    do
        echo "Running MNIST, Abnormal Digit: $i"
        python train.py --dataset mnist --isize 32 --nc 1 --niter 100 --abnormal_class $i --manualseed $m --name mnist${i}_${m} --save_test_images
    done
done
exit 0
