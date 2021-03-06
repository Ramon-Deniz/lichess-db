#!/bin/bash

dir=${1}

export_month() {
    echo "---------------------------"
    ./export-single-variant.sh "$1-$2" $dir/$3 $3
}

echo "Export all to $dir"

variants="standard chess960 antichess atomic crazyhouse horde kingOfTheHill racingKings threeCheck"

for variant in $variants; do
  mkdir -p $dir/$variant
done

for year in 2013; do
  for month in 08 09 10 11 12; do
    for variant in $variants; do
      export_month $year $month $variant
    done
  done
done

for year in 2014 2015 2016; do
  for month in 01 02 03 04 05 06 07 08 09 10 11 12; do
    for variant in $variants; do
      export_month $year $month $variant
    done
  done
done

for year in 2017; do
  for month in 01 02 03 04 05 06 07 08 09 10; do
    for variant in $variants; do
      export_month $year $month $variant
    done
  done
done
