---
layout: post
title:  "This Week in Ballista #2"
date:   2021-01-24 10:00:00 -0700
categories: thisweek
---

Welcome to the second edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Current Status

With the release of Apache Arrow 3.0.0 fast approaching, the Ballista Rust subproject was recently started from 
scratch so that it could take advantage of the many changes that have been implemented in DataFusion.

There has been much progress over the past week and it is now possible to run several queries from the 
[TPC-H Benchmark](https://github.com/ballista-compute/ballista/tree/main/benchmarks/tpch) against a single Rust 
executor. Ballista also now supports SQL joins for the first time.

Here is a quick demonstration of the current capabilities. First, we start a Rust executor in one terminal:

```bash
$ RUST_LOG=info ./target/release/executor

[2021-01-24T15:52:54Z INFO  executor] Running with config: ExecutorConfig { discovery_mode: Standalone, 
  host: "localhost", port: 50051, etcd_urls: "localhost:2379", concurrent_tasks: 4 }
[2021-01-24T15:52:54Z INFO  ballista::executor] Running in standalone mode
[2021-01-24T15:52:54Z INFO  executor] Ballista v0.4.0-SNAPSHOT Rust Executor listening on 0.0.0.0:50051
```

Once the executor has started, we can run the benchmark client in another terminal and have it send the logical plan 
for one of the TPC-H queries to the executor. For reference, this is the SQL for query 5 that was used in this 
demonstration:

```sql
select
    n_name,
    sum(l_extendedprice * (1 - l_discount)) as revenue
from
    customer,
    orders,
    lineitem,
    supplier,
    nation,
    region
where
        c_custkey = o_custkey
  and l_orderkey = o_orderkey
  and l_suppkey = s_suppkey
  and c_nationkey = s_nationkey
  and s_nationkey = n_nationkey
  and n_regionkey = r_regionkey
  and r_name = 'ASIA'
  and o_orderdate >= date '1994-01-01'
  and o_orderdate < date '1995-01-01'
group by
    n_name
order by
    revenue desc;
```

Here is the output from running the query:

```bash
./target/debug/tpch benchmark --host localhost --port 50051 --query 5 --path data --format tbl --iterations 1
Running benchmarks with the following options: BenchmarkOpt { host: "localhost", port: 50051, query: 5, debug: false, 
  iterations: 1, batch_size: 32768, path: "data", file_format: "tbl" }
+-----------+--------------------+
| n_name    | revenue            |
+-----------+--------------------+
| INDIA     | 152776.4509        |
| CHINA     | 140090.8413        |
| INDONESIA | 53419.768299999996 |
+-----------+--------------------+
Query 5 iteration 0 took 7021.5 ms
Query 5 avg time: 7021.45 ms
```

Please refer to the [TPC-H Benchmark](https://github.com/ballista-compute/ballista/tree/main/benchmarks/tpch) project
for full instructions on generating test data and running these benchmarks.

## Current Focus

There are two main areas of focus now:

- There is [very early work](https://github.com/ballista-compute/ballista/pull/422) on re-implementing the distributed 
  query execution capabilities of the 0.3.0 release. This work will likely take a few weekends to get working again.
- The JVM project has been a bit neglected and now needs some work to bring it up to date with the changes that have
  been made to the ballista.proto file which defines the serialization format for query plans.

## Help Wanted

There are no specific asks this week but the the following links can be used to find issues where help is wanted:

- [Rust issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust)
- [JVM issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Ajvm)

Code contributions are great but there are many ways to contribute to the project, including code reviews, writing
documentation, project management, testing, and benchmarking.

## Join the Community

There is a growing community in the [Ballista Discord Channel](https://discord.gg/95PMxSk). This is a great place to
ask questions and learn more about the project.