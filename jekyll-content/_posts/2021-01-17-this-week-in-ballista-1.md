---
layout: post
title:  "This Week in Ballista #1"
date:   2021-01-17 10:00:00 -0700
categories: thisweek
---

Welcome to the first edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform based on [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Current Status & Focus

With the release of Apache Arrow 3.0.0 fast approaching, the Ballista Rust subproject was started from scratch so 
that it can take advantage of the many changes that have been implemented in DataFusion, particularly the extensible 
physical query plans. Previously, Ballista had forked physical operators and expressions from DataFusion but this is 
no longer required, so the Ballista codebase will be much smaller now and it will be easier to benefit from the 
ongoing improvements in DataFusion. Ballista also no longer provides its own DataFrame or Logical Plan and instead
supports execution of DataFusion logical plans.

The focus over the past week has been implementing the serde module so that logical query plans can be serialized to
Google Protocol Buffer format, enabling clients to send DataFusion logical query plans to Ballista executors. There is
a [minimal example](https://github.com/ballista-compute/ballista/blob/main/rust/ballista/examples/client.rs) 
demonstrating this functionality.

There has also been an effort to port over code from 0.3.0 as we work towards getting end-to-end functionality working
again.

## Rust Help Wanted

We are currently looking for help with these specific items for the Rust implementation:

- Implementing more serde code for serializing logical plans and expressions [#341](https://github.com/ballista-compute/ballista/issues/341)

See the [full list](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust) 
of Rust issues where help is needed.

## JVM Help Wanted

We are currently looking for help with these specific items for the JVM implementation:

- Update Kotlin code to use latest protobuf definition [#374](https://github.com/ballista-compute/ballista/issues/374)

See the [full list](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Ajvm) 
of JVM issues where help is needed.

## Other Help Wanted

Code contributions are great but there are many ways to contribute to the project, including code reviews, writing
documentation, project management, testing, and benchmarking.

## Join the Community

There is a growing community in the [Ballista Discord Channel](https://discord.gg/95PMxSk). This is a great place to
ask questions and learn more about the project.