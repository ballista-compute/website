---
layout: page
title: Benchmarks
---

_Coming Soon!_

These benchmark results show relative performance of Ballista on a single node versus DataFusion and 
Apache Spark.

The benchmarks are derived from TPC-H but are not official TPC benchmarks.

| Query | Ballista   | DataFusion | Apache Spark |
|-------|------------|------------|-----------------|
|     1 | TBD | TBD | TBD |
|     3 | TBD | TBD | TBD |
|     5 | TBD | TBD | TBD |
|     6 | TBD | TBD | TBD |
|    10 | TBD | TBD | TBD |
|    12 | TBD | TBD | TBD |

## Disclaimers & Analysis

These are not apples-to-apples comparisons. DataFusion is a lightweight in-process in-memory query engine and 
Ballista is a distributed query engine which currently always streams query stage results to disk for scalability, so 
has a lot of overhead compared to DataFusion. If you can fit your data in memory you should use DataFusion instead of
Ballista!

## Test Details

Tests are run against a Parquet data set at scale factor 100 (the original CSV data was ~100GB and the Parquet data 
set is ~34GB). Each table has 8 partitions.

## Hardware Specifications

- CPU: AMD Ryzen Threadripper 2970WX (24 physical cores, 48 virtual cores)
- RAM: CORSAIR 64GB 16X4 D4 2666 VLPXC16
- GPU: NVIDIA GeForce RTX 3080 Founders Edition
- SSD: SAMSUNG E 1TB 970EVO+NVME M.2 SSD