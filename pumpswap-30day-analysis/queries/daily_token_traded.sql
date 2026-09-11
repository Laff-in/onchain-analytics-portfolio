-- Daily Tokens Traded on PumpSwap (Last 30 Days)
-- Returns the count of distinct tokens traded (bought + sold) per day

SELECT
    DATE(block_time) AS trade_date,
    COUNT(DISTINCT token_bought_symbol) + COUNT(DISTINCT token_sold_symbol) AS daily_token_traded
FROM dex_solana.trades
WHERE project = 'pumpswap'
    AND block_time >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY DATE(block_time)
ORDER BY trade_date ASC
