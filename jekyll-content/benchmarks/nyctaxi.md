---
layout: default
title: Benchmark Specifications
---

# Benchmark Specifications

## Data

The benchmarks use the [NYC Taxi data set](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page), specifically the Yellow Taxi data for 2019. The data set is 7.3 GB in CSV format.

## Query 1

Query 1 is a simple aggregate query and is executed against the NYC Taxi 2019 data set in CSV format. Here is query expressed in SQL.

```sql
SELECT 
  passenger_count, 
  MIN(fare_amount), 
  MAX(fare_amount), 
  SUM(fare_amount) 
FROM tripdata 
GROUP BY passenger_count
```

