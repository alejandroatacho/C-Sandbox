#!/bin/bash

python3 setup.py build_ext --inplace
sleep 1
python3 run.py