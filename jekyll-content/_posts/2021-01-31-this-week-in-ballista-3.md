---
layout: post
title:  "This Week in Ballista #3"
date:   2021-01-31 10:00:00 -0700
categories: thisweek
---

Welcome to the third edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Current Status

There have been some notable developments this week:

There are now separate `scheduler` and `executor` binaries, with support for the following deployment models:
- Local Mode: Single process containing scheduler and executor. This is the simplest way to run Ballista and is 
  primarily intended for local development testing.
- Standalone Mode: Executors connect to the scheduler process
- Etcd Mode: Executors connect to the scheduler process and the scheduler uses etcd for state management
- Kubernetes Mode: Executors connect to the scheduler process and the scheduler uses Kubernetes for discover

Thanks `@edrevo` for taking the lead on this work.

Preliminary work on distributed query execution is now checked in, although not working yet. End-to-end testing 
is now at the point where fragments of the physical plan are being sent to executors for execution. This work will 
likely continue over the next 2-3 weekends and the hope is that distributed execution will be fully working again 
sometime in March 2021, with support for several of the TPC-H queries. 

## Current Focus

There is still a need to continue with implementing serde for the physical plan so that a wide range of queries can
be supported in distributed mode once the distributed planner is complete.

- [Rust issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust)

## Related News

- An [interview with Andy Grove](https://notamonadtutorial.com/ballista-a-distributed-compute-platform-made-with-rust-and-apache-arrow-5f4d1f51c698)
has been published, which talks about the motivation for the Ballista project.

## Join the Community

There is a growing community in the [Ballista Discord Channel](https://discord.gg/95PMxSk). This is a great place to
ask questions and learn more about the project.
