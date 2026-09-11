-- Daily Unique Users on PumpSwap (Last 30 Days)
-- Returns the count of distinct traders active per day

SELECT
    DATE(block_time) AS trade_date,
    COUNT(DISTINCT trader_id) AS daily_unique_traders
FROM dex_solana.trades
WHERE project = 'pumpswap'
    AND block_time >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY DATE(block_time)
ORDER BY trade_date ASC
