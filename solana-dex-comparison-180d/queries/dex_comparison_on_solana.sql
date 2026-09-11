-- DEXs Comparison on Solana (Last 180 Days)
-- This single query powers all 4 visuals on the dashboard:
--   1. DEX Comparison table (raw results)
--   2. Number of Trades (bar chart of num_trades)
--   3. Total Volume in USD (line chart of total_volume_usd)
--   4. Average Trade Volume (area chart of avg_trade_volume_usd)
--   5. Number of Token Pairs (donut chart of num_token_pairs)

WITH dex_metrics AS ( -- temporary table, also called a CTE
    SELECT
        project,
        COUNT(*) AS num_trades,
        SUM(amount_usd) AS total_volume_usd,
        AVG(amount_usd) AS avg_trade_volume_usd,
        COUNT(DISTINCT token_pair) AS num_token_pairs
    FROM dex_solana.trades
    WHERE block_time >= CURRENT_DATE - INTERVAL '180' DAY
        AND blockchain = 'solana'
    GROUP BY project
)

SELECT -- final select
    project,
    num_trades,
    total_volume_usd,
    avg_trade_volume_usd,
    num_token_pairs
FROM dex_metrics
ORDER BY total_volume_usd DESC
LIMIT 10
