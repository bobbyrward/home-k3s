#!/bin/bash
set -e

./system-prep.sh
./get-k3s server --cluster-init

