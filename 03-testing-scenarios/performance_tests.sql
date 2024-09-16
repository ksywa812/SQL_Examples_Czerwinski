-- Find slow-performing queries (requires appropriate permissions)
SELECT query, calls, total_time, rows, 100.0 * shared_blks_hit /
    nullif(shared_blks_hit + shared_blks_read, 0) AS hit_percent
FROM pg_stat_statements
ORDER BY total_time DESC
LIMIT 5;

-- Identify tables without indexes
SELECT schemaname, relname, seq_scan, seq_tup_read, 
    idx_scan, seq_tup_read / seq_scan as avg_tup_read
FROM pg_stat_user_tables
WHERE seq_scan > 0
ORDER BY seq_tup_read DESC;

-- Find unused indexes
SELECT indexrelid::regclass as index, relid::regclass as table
FROM pg_stat_user_indexes
JOIN pg_index USING (indexrelid)
WHERE idx_scan = 0 AND indisunique IS FALSE;