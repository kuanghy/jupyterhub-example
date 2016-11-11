#! /bin/bash

# Filename: run.sh 2016-11-09
# Author: Huoty <sudohuoty@gmail.com>
# Script starts from here:

export LC_ALL=C.UTF-8
export LANG=C.UTF-8
export LC_CTYPE=C.UTF-8
export PYTHONIOENCODING=UTF-8

echo "Current environment:"
env

echo 'Current ulimit '
ulimit -a

export PYTHONPATH="/home/huoty/jqpro/jupyterhub:$PYTHONPATH"

source activate jupyterhub 2>&1 && \
exec python -m jupyterhub.app -f jupyterhub_config.py
