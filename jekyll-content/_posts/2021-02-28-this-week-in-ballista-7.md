---
layout: post
title:  "This Week in Ballista #7"
date:   2021-02-28 09:00:00 -0700
categories: thisweek
---

Welcome to the 7th edition of "This Week in Ballista", a weekly newsletter that summarizes activity in the 
[Ballista Distributed Compute](https://github.com/ballista-compute/ballista) project.

Ballista is a modern distributed compute platform powered by [Apache Arrow](https://arrow.apache.org/) and primarily 
implemented in Rust, but designed to provide first-class support for other programming languages, including Python, 
C++, and Java.

## Current Focus

Now that 0.4.0 has been released, we have been working on a PR to 
[decouple planning from execution](https://github.com/ballista-compute/ballista/pull/574). 

There are a number of incremental improvements planned for performance and scalability for future 0.4.x releases.  

Work has started on designing a 
[Web UI for the scheduler process](https://github.com/ballista-compute/ballista/issues/475). This will make it much
easier to debug cluster setup issues and to monitor running queries.

## Ballista 0.4.1

Ballista 0.4.1 is a patch release to fix a bug when running with multiple executors.

## Recent Talk

Andy Grove gave a presentation on Ballista and Apache Arrow at the 
[New York Open Statistical Programming Meetup](https://www.meetup.com/nyhackr/). The 
[video](bit.ly/3rapgVu) is now available online.

## Help Wanted

Please try out Ballista with your own queries and data sets and file issues for any bugs or missing features that you
discover. We would really like some help improving the [user guide](https://ballistacompute.org/docs/) as well.

We are also looking for help with 
[these issues](https://github.com/ballista-compute/ballista/issues?q=is%3Aopen+label%3A%22help+wanted%22+label%3Arust).

## Community

Follow the [@BallistaCompute](https://twitter.com/BallistaCompute) Twitter account to receive notifications when new
editions of "This Week in Ballista" are published.

Join the [Ballista Discord Channel](https://discord.gg/95PMxSk) to chat with the core contributors.
