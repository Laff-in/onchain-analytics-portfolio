-- 30 Days Transaction Metrics on Linea
-- This single query powers all 5 visuals on the dashboard:
--   1. Transactions Metric table (raw daily results)
--   2. Total Transactions (line chart of total_transactions)
--   3. Successful vs Failed Transactions (stacked area chart)
--   4. Success Rate % (breakdown by day)
--   5. Total Fees on Linea (bar chart of total_fees_linea)
--   6. Average Fee per Transaction (line chart of avg_fee_per_txn_linea)

WITH base AS (
    SELECT
        block_date,
        gas_used * gas_price / 1e18 AS fees_linea,
        success
    FROM linea.transactions
    WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
)

/* final select */
SELECT
    block_date,
    COUNT(*) AS total_transactions,
    COUNT(*) FILTER (WHERE success) AS successful_transactions,
    COUNT(*) FILTER (WHERE NOT success) AS failed_transactions,
    -- success rate: successful transactions divided by all transactions,
    -- rounded to 2 decimal places. NULLIF guards against dividing by zero.
    ROUND(100.0 * COUNT(*) FILTER (WHERE success) / NULLIF(COUNT(*), 0), 2) AS success_rate_percent,
    ROUND(SUM(fees_linea), 2) AS total_fees_linea,
    ROUND(AVG(fees_linea), 6) AS avg_fee_per_txn_linea
FROM base
GROUP BY block_date
ORDER BY block_date
