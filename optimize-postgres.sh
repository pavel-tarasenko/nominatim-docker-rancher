#!/bin/bash
PG_CONFIG=$1
if [[ ! -f $PG_CONFIG ]] ; then
  echo "Postgres configuration file $PG_CONFIG does not exists"
  exit 1
fi
echo "> Updating $PG_CONFIG"
sed -i "s/shared_buffers = 128MB/shared_buffers = 16GB/g" $PG_CONFIG
echo "full_page_writes = off" >> $PG_CONFIG
echo "synchronous_commit = off" >> $PG_CONFIG
echo "checkpoint_completion_target = 0.9" >> $PG_CONFIG
echo "checkpoint_timeout = 30min" >> $PG_CONFIG
echo "wal_buffers = 16MB" >> $PG_CONFIG 
echo "max_wal_size = 8GB" >> $PG_CONFIG
echo "min_wal_size = 4GB" >> $PG_CONFIG
echo "work_mem = 100MB" >> $PG_CONFIG
echo "maintenance_work_mem = 8GB" >> $PG_CONFIG
echo "effective_cache_size = 45GB" >> $PG_CONFIG
echo "effective_io_concurrency = 400" >> $PG_CONFIG
echo "random_page_cost = 1.1" >> $PG_CONFIG
echo "temp_buffers = 100MB" >> $PG_CONFIG
echo "max_parallel_workers_per_gather = 2" >> $PG_CONFIG
echo "default_statistics_target = 500" >> $PG_CONFIG
echo "track_activity_query_size = 16384" >> $PG_CONFIG

echo "> Last 20 lines of updated $PG_CONFIG"
tail -20 $PG_CONFIG
