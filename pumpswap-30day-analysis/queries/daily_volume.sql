-- Daily Volume on PumpSwap (Last 30 Days)
-- Returns total USD trading volume per day on PumpSwap over the trailing 30-day window

SELECT
    DATE(block_time) AS trade_date,
    SUM(amount_usd) AS daily_volume_usd
FROM dex_solana.trades
WHERE project = 'pumpswap'
    AND block_time >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY DATE(block_time)
ORDER BY trade_date ASC
