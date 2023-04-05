#!/usr/bin/env bash

file=USC00406403.dly

rm data/$file

wget -P data/ https://www.ncei.noaa.gov/pub/data/ghcn/daily/all/$file

