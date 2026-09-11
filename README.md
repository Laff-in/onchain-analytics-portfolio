# On-Chain Analytics Portfolio

I'm an on-chain data analyst building dashboards on **Dune.com**, covering activity across **Solana**, **Ethereum**, and **Linea**, as well as DEX-level analysis on protocols like **PumpSwap**.

Each dashboard below includes the underlying SQL query, key metrics tracked, written observations, and screenshots of the live results.

---

## Dashboards

| Dashboard | Chain / Protocol | Timeframe | Link |
|---|---|---|---|
| PumpSwap Analysis | Solana (PumpSwap) | Last 30 days | [View](./pumpswap-30day-analysis) |
| Comparison of DEXs on Ethereum | Ethereum | Last 1 year | [View](./ethereum-dex-comparison-1yr) |
| DEXs Comparison on Solana | Solana | Last 180 days | [View](./solana-dex-comparison-180d) |
| Transactions Metric on Linea | Linea | Last 30 days | [View](./linea-30day-transactions) |

---

## What Each Dashboard Covers

**[PumpSwap Analysis (30 Days)](./pumpswap-30day-analysis)**
Daily trading volume, tokens traded, unique users, and fees generated on PumpSwap.

**[Comparison of DEXs on Ethereum (1 Year)](./ethereum-dex-comparison-1yr)**
Cross-DEX comparison of trade count, total volume, average trade size, and token pair diversity across Uniswap, Balancer, Curve, Fluid, and others on Ethereum.

**[DEXs Comparison on Solana (180 Days)](./solana-dex-comparison-180d)**
Cross-DEX comparison of trade count, total volume, average trade size, and token pair diversity across Meteora, PumpSwap, Raydium, and others on Solana.

**[30 Days Transactions Metric on Linea](./linea-30day-transactions)**
Daily transaction volume, success/failure rates, and gas fee trends on the Linea network.

---

## Tools & Skills
- **Dune Analytics:**  SQL query writing, dashboard building, Spellbook decoded tables
- **Chains covered:** Solana, Ethereum, Linea
- **DEXs analyzed:** PumpSwap, Uniswap, Balancer, Curve, Fluid, Ekubo, Meteora, Raydium, Whirlpool, and more
- **Core skills:** CTEs, window/aggregate functions, filtering & date logic, cross-project comparisons, data visualization, written analysis

---

## About This Repo
Each dashboard folder follows the same structure for easy navigation:

- `README.md` — metrics, key observations, and context
- `queries/` — raw SQL used to power the dashboard
- `screenshots/` — visuals from the live Dune dashboard

Feel free to explore each folder, or click through to the live Dune dashboards linked above.
