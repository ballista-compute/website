---
layout: page
title: Benchmarks
---

These benchmarks are for Ballista version `0.2.5`. This page will be updated periodically as the benchmarks are improved or when new releases of Ballista are available.

Benchmark specifications are [here](/benchmarks/nyctaxi) and hardware specifications are [here](/benchmarks/hardware). 

# Local Mode Benchmarks

These benchmarks test performance in a single docker container with constrained CPU and unconstrained memory. These figures are based on a single run in each case.

## Query 1: Aggregate Query against NYC Taxi (CSV)  

### Desktop (64 GB RAM)

This chart shows throughput in queries per minute, scaling with the number of CPU cores allocated.

![](https://raw.githubusercontent.com/ballista-compute/benchmarks/master/results/0.2.5/desktop/benchmarks-csv.svg)

This table provides the raw query execution times in seconds.

|Cores|Ballista Rust Executor|Apache Spark|
|-----|---|---|
|3|22.714|46.002|
|6|11.517|30.616|
|9|7.803|21.658|
|12|5.486|17.714|

### Laptop (16 GB RAM)

This chart shows throughput in queries per minute, scaling with the number of CPU cores allocated.

![](https://raw.githubusercontent.com/ballista-compute/benchmarks/master/results/0.2.5/laptop/benchmarks-csv.svg)

This table provides the raw query execution times in seconds.

|Cores|Ballista Rust Executor|Apache Spark|
|-----|---|---|
|3|140.888|47.558|
|6|59.713|33.872|
|9|15.405|29.796|
|12|12.343|28.899|

## Query 1: Aggregate Query against NYC Taxi (Parquet)  

### Desktop (64 GB RAM)

This chart shows throughput in queries per minute, scaling with the number of CPU cores allocated.

![](https://raw.githubusercontent.com/ballista-compute/benchmarks/master/results/0.2.5/desktop/benchmarks-parquet.svg)

This table provides the raw query execution times in seconds.

|Cores|Ballista Rust Executor|Apache Spark|
|-----|---|---|
|3|9.36|5.824|
|6|4.476|6.259|
|9|3.043|8.869|
|12|2.405|3.723|

### Laptop (16 GB RAM)

This chart shows throughput in queries per minute, scaling with the number of CPU cores allocated.

![](https://raw.githubusercontent.com/ballista-compute/benchmarks/master/results/0.2.5/laptop/benchmarks-parquet.svg)

This table provides the raw query execution times in seconds.

|Cores|Ballista Rust Executor|Apache Spark|
|-----|---|---|
|3|30.896|8.732|
|6|12.279|7.105|
|9|2.779|3.829|
|12|2.405|3.253|


## Notes

- The benchmarks are a work in progress
- TODO: document the configurations used
- TODO: document memory usage
- TODO: run with parquet as well
- Ballista has a very simple threading model where one thread is used per partition. Spark has a much more sophisticated threading model and work is shared between threads.

