---
layout: post
title:  "This Week in Ballista #4"
date:   2021-02-07 10:00:00 -0700
categories: thisweek
---

Welcome to the fourth edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Distributed Query Execution 

Distributed query execution is now implemented and has been tested successfully end to end but there is 
still a little more work to do before this is enabled by default and able to support the benchmarks.

The source for the query planner is 
[here](https://github.com/ballista-compute/ballista/blob/main/rust/ballista/src/scheduler/planner.rs). This is a 
simple implementation that will be optimized once the benchmark queries are functionally working.

The query planner works by translating a DataFusion physical query plan into a Ballista physical query plan by 
breaking the plan up into query stages whenever partitioning changes between a parent and child operator. A query
stage is represented by the [QueryStageExec](https://github.com/ballista-compute/ballista/blob/main/rust/ballista/src/executor/query_stage.rs) 
operator.

A query stage can be executed by distributing the execution across the available executors in the cluster. The output 
from each partition is streamed to disk on the executor in Arrow IPC format. Future query stages then retrieve these 
results using a [ShuffleReaderExec](https://github.com/ballista-compute/ballista/blob/main/rust/ballista/src/executor/shuffle_reader.rs)
operator.

Finally, a [CollectExec]() operator can be executed to retrieve the final result partitions in the client and 
coalesce them into a single partition.

All of these pieces work and now the following work needs to happen to make this fully usable:

- The scheduler already has the ability to receive a logical plan and execute a distributed query using the available
executors in the cluster, and the Ballista `DataFrame::collect` method now needs to be updated to use this mechanism 
instead of sending the logical plan to one executor to be executed in-process with DataFusion ([#485](https://github.com/ballista-compute/ballista/issues/485)).
- There is still a little more work to do in the serde module to add support for all of the operators and expressions
required to support the benchmark queries (multiple issues).
- The [User Guide](https://github.com/ballista-compute/ballista/tree/main/docs/user-guide) needs updating to reflect
the changes in 0.4.0 ([#486](https://github.com/ballista-compute/ballista/issues/486)).

At the current rate of progress, it is very likely that there will be a 0.4.0 alpha release before the end of the 
month and at this point it will be easier to have more contributors working on different areas of the project.

## Help Wanted

There has been an effort to start cleaning up the GitHub issues and more issues are now labeled with 
[help wanted](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust).

There are a mix of small short term issues and larger longer term initiatives. 

## Join the Community

There is a growing community in the [Ballista Discord Channel](https://discord.gg/95PMxSk). This is a great place to
ask questions and learn more about the project.
