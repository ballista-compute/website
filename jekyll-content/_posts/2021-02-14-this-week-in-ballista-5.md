---
layout: post
title:  "This Week in Ballista #5"
date:   2021-02-14 10:00:00 -0700
categories: thisweek
---

Welcome to the fifth edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## 0.4.0-alpha-1 Release

Distributed query execution is now working well enough to support TPC-H queries 1, 3, 5, 6, 10, and 12 and the
first 0.4.0 release is now available on Dockerhub, making it simple to try out Ballista locally by setting up a 
standalone cluster or by using Docker Compose. See the [Ballista User Guide](https://ballistacompute.org/docs) 
for instructions.

The full 0.4.0 release will be published once the 
[remaining issues](https://github.com/ballista-compute/ballista/milestone/7) are resolved. 

## Help Wanted

Please try out Ballista with your own queries and data sets and file issues for any bugs or missing features that you
discover.

We are also looking for help with 
[these issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust).

## Community

Follow the [@BallistaCompute](https://twitter.com/BallistaCompute) Twitter account to receive notifications when new
editions of "This Week in Ballista" are published.

Join the [Ballista Discord Channel](https://discord.gg/95PMxSk) to chat with the core contributors.
