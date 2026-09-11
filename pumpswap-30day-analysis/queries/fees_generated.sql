-- Fees Generated on PumpSwap (Last 30 Days)
-- Returns total USD fees generated per day on PumpSwap

SELECT
    DATE(block_time) AS trade_date,
    SUM(fee_usd) AS daily_fees_usd
FROM dex_solana.trades
WHERE project = 'pumpswap'
    AND block_time >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY DATE(block_time)
ORDER BY trade_date ASC
