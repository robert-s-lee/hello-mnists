#!/usr/bin/env bash

python keras.py $@    
python pl_cifar10.py $@
python pl_mnist.py $@
python pytorch.py $@