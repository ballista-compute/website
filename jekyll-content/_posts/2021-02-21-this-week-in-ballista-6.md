---
layout: post
title:  "This Week in Ballista #6"
date:   2021-02-21 09:00:00 -0700
categories: thisweek
---

Welcome to the 6th edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Ballista 0.4.0 Now Available!

We have now released version 0.4.0 and this is a huge milestone for the project because this is the first ever 
release that can truly be used to run a wide range of distributed queries and demonstrates that the basic 
architecture is sound.

This release supports running a cluster in standalone mode and also supports Kubernetes deployments.

Please refer to the [release notes](2021-02-21-ballista-0.4.0.md) for more information about the functionality in 
this release and some preliminary benchmarks comparing performance with Apache Spark. The results are mixed but some
of the benchmark queries run with 2x the performance of Spark, which is promising.

However, there is much more work to do to make Ballista scalable and performant with large data sets. The most 
important optimizations are related to the join support. Here are the relevant GitHub issues:

- [Optimize hash joins to choose smaller side as build side](https://github.com/ballista-compute/ballista/issues/521)
- [Add support for ShuffleHashJoin](https://github.com/ballista-compute/ballista/issues/595)
- [Add support for SortMergeJoin](https://github.com/ballista-compute/ballista/issues/596)

In addition to these larger bodies of work, there are still numerous smaller bug fixes and incremental improvements 
that are being planned for subsequent 0.4.x releases and we are now moving to a weekly release schedule, with 
releases every Sunday to coincide with this newsletter.

## Upcoming Talk

Andy Grove will be giving a presentation on Ballista and Apache Arrow at the 
[New York Open Statistical Programming Meetup](https://www.meetup.com/nyhackr/) this Wednesday (2/24). See the 
[event page](https://www.meetup.com/nyhackr/events/276261812/) for more details.

## Help Wanted

Please try out Ballista with your own queries and data sets and file issues for any bugs or missing features that you
discover. We would really like some help improving the [user guide](https://ballistacompute.org/docs/) as well.

We are also looking for help with 
[these issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust).

## Community

Follow the [@BallistaCompute](https://twitter.com/BallistaCompute) Twitter account to receive notifications when new
editions of "This Week in Ballista" are published.

Join the [Ballista Discord Channel](https://discord.gg/95PMxSk) to chat with the core contributors.
