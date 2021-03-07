---
layout: post
title:  "This Week in Ballista #8"
date:   2021-03-07 09:00:00 -0700
categories: thisweek
---

Welcome to "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Progress This Week

The main changes in the past week are:

- The executor can now be configured to execute a fixed number of concurrent tasks.
- The client has been optimized to stream results from executors without loading the data set into memory.
- Basic statistics (row count, number of batches, number of bytes) are now available to the scheduler for each query. 
  stage that has been executed. This will allow dynamic query plan optimizations to be implemented in the future.  
- lto is enabled by default for the cargo release target.

There has also been some extensive refactoring to make the code base easier to work with.

## Help Wanted

Please try out Ballista with your own queries and data sets and file issues for any bugs or missing features that you
discover. We would really like some help improving the [user guide](https://ballistacompute.org/docs/) as well.

We are also looking for help with 
[these issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust).

## Community

Follow the [@BallistaCompute](https://twitter.com/BallistaCompute) Twitter account to receive notifications when new
editions of "This Week in Ballista" are published.

Join the [Ballista Discord Channel](https://discord.gg/95PMxSk) to chat with the core contributors.
