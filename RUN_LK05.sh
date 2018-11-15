#!/bin/bash

echo "==parallel=="
num_para=28 # Please set this below 28 at blanton!
{
   for i in $(seq 1 300); do
      echo $i
   done
} | xargs -I{} -P${num_para} -n1 python GWP_randphi_LK05_PIERRE.py {}
