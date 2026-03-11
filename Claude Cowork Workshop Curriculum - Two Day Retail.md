# Claude Cowork Workshop Curriculum
## Two-Day Intensive: AI-Powered Retail Excellence
### Target: Retail Management & Operations Staff

---

## Curriculum Overview

| | Day 1 | Day 2 |
|---|---|---|
| **Theme** | Retail Operations & Excel Automation | Business Intelligence & Strategic Applications |
| **Focus** | Hands-on data tasks with Claude Cowork | Analytics, forecasting, and decision-making |
| **Outcome** | Automate daily Excel workflows | Build BI dashboards and action plans |

---

## Pre-Workshop Preparation (Facilitator)

- Prepare sample retail datasets: sales records, inventory logs, supplier lists, customer purchase history
- Set up Claude Cowork access for all participants (browser or desktop)
- Load shared Excel workbooks on participant devices
- Print prompt cheat sheets and module quick-reference cards
- Confirm screen-sharing and projector setup for demos

---

## DAY 1: Claude Cowork for Retail Operations & Excel Automation

---

### Module 1 — Introduction to Claude Cowork & Retail AI
**Time:** 09:00 – 09:30 (30 min)
**Format:** Presentation & Discussion

#### Learning Objectives
- Understand what Claude Cowork is and what it can do
- Recognize how AI fits into modern retail operations
- Set expectations and goals for the two-day workshop

#### Content Outline
1. What is Claude Cowork?
   - AI assistant built for business workflows
   - Difference between Claude Cowork and generic AI chatbots
   - Key strengths: natural language understanding, data reasoning, content generation

2. AI in Retail — Why Now?
   - Data explosion in retail (POS, CRM, ERP, e-commerce)
   - Manual analysis bottlenecks and cost of slow decisions
   - Real examples: demand sensing, shelf optimization, customer segmentation

3. Workshop Roadmap
   - Two-day journey overview
   - How each module connects to real job tasks
   - Ground rules: ask questions, try everything, no wrong attempts

#### Examples & Use Cases

**Use Case 1 — The Monday Morning Report Problem**
- Situation: A retail operations manager spends 2–3 hours every Monday morning copying sales figures from the POS system into an Excel template, formatting them, and writing a summary email to the regional director.
- With Claude Cowork: The manager pastes the raw POS export into Claude and asks: *"Summarize last week's sales performance across all store categories and write a 3-paragraph management update email."* Claude produces the narrative in under 2 minutes.
- Result: What took 3 hours now takes 15 minutes — the manager spends the saved time reviewing the analysis rather than creating it.

**Use Case 2 — The New Staff Member Who Doesn't Know Excel**
- Situation: A newly promoted store supervisor needs to produce a weekly inventory variance report but has limited Excel skills. Normally this requires support from the IT or data team.
- With Claude Cowork: The supervisor describes the report in plain English. Claude explains the steps, writes the formulas, and guides the report build without needing IT support.
- Result: Self-sufficiency from day one; reduced dependency on specialized staff for routine reporting.

**Use Case 3 — Catching a Costly Mistake Before It Happens**
- Situation: A buyer is about to submit a large purchase order based on a demand estimate calculated manually in a spreadsheet. The formula contains an error that overstates demand by 40%.
- With Claude Cowork: Before submitting, the buyer pastes the spreadsheet logic into Claude and asks: *"Does this calculation look correct for estimating seasonal demand?"* Claude identifies the error in the formula.
- Result: Prevented over-ordering of 400 units and saved approximately THB 180,000 in excess inventory costs.

#### Facilitator Notes
- Keep this session energetic and conversational — avoid slides-only delivery
- Ask participants: "What is your biggest time-waster at work right now?"
- Use responses to anchor the rest of Day 1

---

### Module 2 — Claude Cowork for Retail Data Management
**Time:** 09:30 – 10:30 (60 min)
**Format:** Case Studies & Live Demo

#### Learning Objectives
- Import and describe retail datasets to Claude Cowork
- Clean messy data using natural language instructions
- Validate and structure data for downstream analysis

#### Content Outline
1. Types of Retail Data
   - Sales transactions, inventory snapshots, supplier records, returns logs
   - Common data quality issues: duplicates, missing values, inconsistent formats

2. Describing Data to Claude Cowork
   - How to paste or describe a dataset in plain language
   - Prompting Claude to identify problems: "What issues do you see in this data?"
   - Asking for a data cleaning plan before executing

3. Data Cleaning Workflows
   - Standardizing product codes and category names
   - Handling missing stock levels and null sales figures
   - Deduplicating customer records

4. Structuring Data for Analysis
   - Reshaping tables: wide vs. long format
   - Adding calculated columns via Claude (e.g., margin %, days of stock)
   - Exporting clean data back to Excel

#### Examples & Use Cases

**Use Case 1 — The Product Category Naming Chaos**
- Situation: The company has 3 years of sales data where the same product category has been entered differently by different staff: "Beverages", "BEVERAGE", "Bev.", "bevs", "Drinks". Running any category-level report produces misleading totals.
- Prompt used: *"This sales data has inconsistent category names in Column D. Standardize all variations of 'beverages' to 'Beverages' and list any other inconsistencies you find."*
- Claude's output: Identified 7 category naming inconsistencies, provided corrected values for all, and suggested a master category list to prevent recurrence.
- Result: Clean category data in 10 minutes; reports now accurately aggregate by category.

**Use Case 2 — Missing Stock Levels in Inventory Export**
- Situation: The weekly inventory export from the ERP system has 83 rows where the "Current Stock" column is blank — either items not scanned or system sync errors. These blank rows cause calculation errors in reorder reports.
- Prompt used: *"This inventory table has blank values in the 'Current Stock' column. Identify how many rows are affected, suggest what likely caused the blanks, and recommend how to handle them for a reorder calculation."*
- Claude's output: Flagged 83 affected rows, noted they were all from one store location (likely a sync issue), and recommended flagging them as "Pending Verification" rather than treating as zero stock.
- Result: Prevented false stockout alerts for 83 products; store manager alerted to fix the sync error.

**Use Case 3 — Duplicate Customer Records Before a Loyalty Campaign**
- Situation: Before launching a loyalty points campaign, the CRM export shows 4,200 customer records but the team suspects duplicates exist from customers who registered both in-store and online.
- Prompt used: *"This customer list may contain duplicates where the same person registered twice using slightly different email addresses or phone numbers. Suggest a method to identify likely duplicates and flag them for review."*
- Claude's output: Explained a fuzzy matching approach based on name + phone number, provided Excel formula logic to flag high-probability duplicates, identified 340 likely duplicate pairs.
- Result: Campaign sent to 3,860 unique customers instead of 4,200, avoiding double rewards payouts and improving campaign ROI measurement.

**Use Case 4 — Restructuring a Flat Sales Export for Pivot Analysis**
- Situation: The POS system exports sales data in a wide format with one column per month (Jan_Sales, Feb_Sales, Mar_Sales...). This format cannot be used directly in a pivot table for trend analysis.
- Prompt used: *"This table is in wide format with one column per month. Explain how to restructure it into long format with columns: Product, Month, Sales — and write the Excel steps to do it."*
- Claude's output: Provided step-by-step instructions using Excel's "Unpivot" feature in Power Query, with screenshots guidance.
- Result: Participant restructured 12 months of data in 8 minutes, enabling immediate pivot table analysis.

#### Hands-On Demo
- Facilitator loads a messy sales CSV with 5–6 intentional data quality issues
- Live: ask Claude Cowork to identify, explain, and fix each issue
- Participants observe, then replicate on their own sample file

#### Key Prompts to Practice
```
"Review this sales data and list any data quality issues you find."
"Standardize the product category column — use these approved values: [list]."
"Add a column that calculates gross margin percentage for each row."
"Remove duplicate rows based on transaction ID."
```

---

### Break — 10:30 to 10:45

---

### Module 3 — Excel Automation with Claude Cowork
**Time:** 10:45 – 12:00 (75 min)
**Format:** Hands-On Exercise & Coaching

#### Learning Objectives
- Generate Excel formulas using natural language prompts
- Build pivot tables and summary reports with Claude's guidance
- Create and understand basic Excel macros via Claude Cowork

#### Content Outline
1. Formula Generation
   - Ask Claude to write VLOOKUP, SUMIF, INDEX/MATCH, nested IF statements
   - Explain the formula in plain English before applying
   - Debug broken formulas: paste the error, ask Claude to fix it

2. Pivot Tables via Claude
   - Describe the analysis goal, let Claude recommend the pivot structure
   - Examples: sales by region, top SKUs by revenue, inventory turnover by category
   - Formatting tips from Claude: conditional formatting, number formats

3. Data Consolidation
   - Merging multiple sheets (weekly sales into monthly summary)
   - Linking data across workbooks with Claude's step-by-step guidance
   - Building a master dashboard structure

4. Macro Basics with Claude
   - What macros are and when to use them
   - Ask Claude to write a simple macro: "Create a macro that sorts Column B descending and highlights values below 50 in red"
   - How to paste and run macros safely in Excel (Developer tab)

#### Examples & Use Cases

**Use Case 1 — Net Revenue Formula with Multiple Conditions**
- Situation: The sales analyst needs a formula that calculates net revenue differently based on whether a product is on promotion or not: regular items use (Qty × Price × (1 - Discount)), promotional items use (Qty × Promo_Price).
- Prompt used: *"Write an Excel formula for net revenue. If Column E says 'Promo', use Column F (Promo_Price) × Column B (Qty). Otherwise use Column C (Price) × Column B (Qty) × (1 - Column D (Discount))."*
- Claude's output:
  ```
  =IF(E2="Promo", B2*F2, B2*C2*(1-D2))
  ```
  Along with a plain-English explanation of how the IF logic works.
- Result: Formula built in 2 minutes; analyst applied it to 1,200 rows without errors.

**Use Case 2 — Automatic Low-Stock Alert Macro**
- Situation: The inventory team checks the stock report every morning and manually highlights any product where stock is below reorder point. This takes 20–30 minutes daily across 500 SKUs.
- Prompt used: *"Write an Excel VBA macro that scans Column D (Current Stock) and Column E (Reorder Point). If Current Stock is less than Reorder Point, highlight that row in yellow and add the word 'REORDER' in Column F."*
- Claude's output: Full VBA macro code ready to paste into the Excel Developer editor.
- Result: The daily check now runs in under 10 seconds; team can act on alerts immediately each morning.

**Use Case 3 — Consolidating 4 Store Sales Sheets into One Monthly Summary**
- Situation: Each of the company's 4 stores submits a weekly Excel file. The operations manager manually copies and pastes data from all 4 files into a master sheet every Monday.
- Prompt used: *"I have 4 Excel sheets named Store_A, Store_B, Store_C, Store_D, each with the same column structure: Date, SKU, Qty, Revenue. Write a macro that consolidates all 4 sheets into a new sheet called 'Master' and adds a 'Store' column to identify the source."*
- Claude's output: A 20-line VBA macro that loops through each sheet, copies data, and appends the store name.
- Result: Consolidation time reduced from 45 minutes to under 1 minute.

**Use Case 4 — Debugging a Broken VLOOKUP**
- Situation: A buyer's purchase order tracker uses VLOOKUP to pull supplier lead times from a reference table, but it keeps returning #N/A errors for about 30% of products.
- Prompt used: *"My VLOOKUP formula is: =VLOOKUP(A2, SupplierRef!A:C, 3, FALSE). It returns #N/A for some products. The product codes in Column A look the same as in the reference table. What could cause this?"*
- Claude's output: Explained 3 likely causes — trailing spaces in product codes, number-stored-as-text formatting mismatch, case sensitivity in some configurations — and provided a fix using TRIM() and TEXT() wrappers.
- Result: Fixed in 5 minutes; all VLOOKUP errors resolved.

#### Hands-On Exercises
**Exercise A — Formula Builder**
- Given: a sales table with quantity, unit price, discount %
- Task: ask Claude to generate formulas for net revenue, cumulative total, rank by revenue
- Expected time: 15 min

**Exercise B — Pivot Table Report**
- Given: 3 months of transaction data
- Task: build a pivot summarizing monthly sales by product category and region
- Expected time: 20 min

#### Key Prompts to Practice
```
"Write an Excel formula to calculate net revenue where revenue = quantity × unit price × (1 - discount)."
"I have sales data in columns A–F. What pivot table structure would best show top 10 products by revenue?"
"This formula returns a #VALUE error: [paste formula]. What is wrong and how do I fix it?"
"Write an Excel VBA macro that filters Column C for 'Out of Stock' and copies those rows to Sheet2."
```

---

### Lunch Break — 12:00 to 13:00

---

### Module 4 — Inventory & Supply Chain Optimization with AI
**Time:** 13:00 – 14:30 (90 min)
**Format:** Case Studies & Interactive Session

#### Learning Objectives
- Use Claude Cowork for demand forecasting inputs and logic
- Identify optimal reorder points and safety stock levels
- Draft supplier communications and flag supply chain risks

#### Content Outline
1. Demand Forecasting Fundamentals
   - What drives demand: seasonality, promotions, trends, external events
   - Feeding historical sales data to Claude for pattern recognition
   - Generating simple forecasts and sanity-checking them

2. Stock Optimization with Claude
   - Calculating reorder point: "Given avg daily sales and lead time, what is my reorder point?"
   - Safety stock formulas and when to apply them
   - Identifying slow-moving vs. fast-moving SKUs from data

3. Supplier Communication
   - Drafting purchase orders, reorder requests, and escalation emails with Claude
   - Adjusting tone: formal supplier negotiation vs. urgent restocking request
   - Asking Claude to summarize supplier performance from a data table

4. Supply Chain Risk Identification
   - Single-supplier dependency analysis
   - Lead time variance flagging
   - What-if scenarios: "If lead time increases by 2 weeks, which SKUs will stock out?"

#### Examples & Use Cases

**Use Case 1 — Songkran Festival Demand Spike Preparation**
- Situation: The purchasing team needs to increase stock orders 6 weeks before the Songkran holiday but isn't sure by how much. Last year they ran out of 3 top SKUs during the festival.
- Prompt used: *"Here are 2 years of daily sales data. Identify how much demand increases in the 2 weeks before and during Songkran (April 10–16) compared to the average week. Which SKUs show the biggest spike?"*
- Claude's output: Identified a 2.4× average demand multiplier during Songkran week, ranked top 10 SKUs by spike magnitude, and suggested specific order quantity uplifts per SKU.
- Result: Purchasing team ordered correctly; zero stockouts during Songkran that year.

**Use Case 2 — Calculating Safety Stock for High-Variance Items**
- Situation: The inventory manager knows she needs safety stock but uses a flat "30 days of stock" rule for all products regardless of demand variability or supplier reliability.
- Prompt used: *"Explain how to calculate safety stock using demand variability and lead time variability. Then apply this formula to SKU-2201 which has: avg daily demand = 40 units, demand std dev = 12, avg lead time = 14 days, lead time std dev = 3 days. Use a 95% service level."*
- Claude's output: Explained the formula (Safety Stock = Z × √(Lead Time × σ_demand² + Demand² × σ_lead²)), calculated safety stock at 94 units vs. the current flat 30-day rule of 1,200 units.
- Result: Right-sized safety stock calculation; freed up capital tied in unnecessary excess inventory.

**Use Case 3 — Single-Supplier Dependency Risk Assessment**
- Situation: A supply chain disruption in Q4 caused stockouts for 12 products. The operations director wants to know how exposed the company is to single-supplier dependency.
- Prompt used: *"This supplier-to-SKU mapping table shows which supplier provides each product. Identify all SKUs that have only one supplier, and calculate what percentage of total revenue those SKUs represent based on the sales data in the next tab."*
- Claude's output: Identified 47 SKUs (38% of revenue) with single-supplier dependency; highlighted top 10 by revenue risk; suggested which to prioritize for dual-sourcing.
- Result: Procurement team had a prioritized dual-sourcing list within 30 minutes; presented to management with revenue-at-risk figures.

**Use Case 4 — Supplier Performance Summary Email**
- Situation: The purchasing manager needs to send a quarterly supplier review email to their top 5 suppliers, including delivery performance data. Writing 5 customized emails takes half a day.
- Prompt used: *"Here is the delivery performance data for Supplier ABC for Q1: 23 orders placed, 18 delivered on time, 5 late (avg 4 days late), 2 orders with quality issues. Write a professional quarterly review email that acknowledges their performance and asks them to address the late deliveries."*
- Claude's output: A professional, specific email referencing the actual numbers, with a polite but firm tone requesting a corrective action plan.
- Result: 5 supplier emails drafted in 20 minutes instead of 4 hours.

#### Case Study — Stockout Crisis Scenario
- Scenario: Top 3 SKUs are at 5 days of stock. Supplier lead time is 14 days.
- Teams use Claude Cowork to:
  1. Identify which products are at risk
  2. Calculate emergency order quantities
  3. Draft an urgent supplier email
  4. Suggest substitution products for sales team

#### Key Prompts to Practice
```
"Based on these 6 months of sales data, identify which products show seasonal demand peaks."
"Calculate the reorder point for SKU-1042 given: average daily sales = 25 units, lead time = 10 days, safety stock = 3 days."
"Draft a professional email to our supplier requesting expedited delivery of [product] due to low stock."
"Which SKUs in this inventory list have fewer than 7 days of stock remaining based on current daily sales rate?"
```

---

### Break — 14:30 to 14:45

---

### Module 5 — Retail Sales Analysis & Reporting
**Time:** 14:45 – 16:30 (105 min)
**Format:** Hands-On Exercise & Group Activity

#### Learning Objectives
- Analyze sales trends and product performance with Claude
- Identify customer purchasing patterns from transaction data
- Generate structured management summary reports

#### Content Outline
1. Sales Trend Analysis
   - Month-over-month and year-over-year comparisons
   - Identifying growth, decline, and plateau patterns
   - Asking Claude: "Summarize the key trends you see in this sales data"

2. Product Performance Deep Dive
   - Top performers, bottom performers, and why
   - Contribution margin analysis by SKU
   - Shelf space efficiency and sell-through rate

3. Customer Purchasing Patterns
   - Basket analysis: what products are bought together?
   - Purchase frequency segmentation: one-time vs. repeat buyers
   - Average transaction value trends

4. Management Report Generation
   - Structuring an executive summary with Claude
   - Turning data tables into narrative commentary
   - Creating a monthly retail performance report template

#### Examples & Use Cases

**Use Case 1 — Identifying a Silent Revenue Decline**
- Situation: Overall store revenue is flat month-over-month. Management assumes performance is stable. A new analyst decides to run a category-level analysis with Claude.
- Prompt used: *"Here are 6 months of sales by product category. Overall revenue is flat. Identify which categories are growing and which are declining — the flat total may be masking movement underneath."*
- Claude's output: Found that 3 high-margin categories (Electronics Accessories, Personal Care, Stationery) declined 22% combined, masked by a 19% increase in low-margin Food & Beverages.
- Result: Management discovered a margin erosion problem that wasn't visible at the top level — initiated a promotional campaign for the declining high-margin categories.

**Use Case 2 — Basket Analysis to Increase Average Transaction Value**
- Situation: The store's average basket size (items per transaction) has been flat at 2.3 items. The store manager wants ideas to increase cross-selling.
- Prompt used: *"This transaction log shows individual line items per receipt. Identify the 10 most common product pairs that appear in the same transaction. What cross-selling opportunities do these pairs suggest?"*
- Claude's output: Identified that customers who buy shampoo also buy conditioner 67% of the time, and that notebooks and pens are purchased together 58% of the time. Suggested bundled placement and "complete the set" shelf tags.
- Result: Bundle promotions for top 5 pairs implemented; average basket size increased from 2.3 to 2.7 items within 6 weeks.

**Use Case 3 — The Monthly Management Report in 15 Minutes**
- Situation: The retail operations manager produces a 2-page monthly performance report for the CEO. It takes 4–5 hours to write: pulling numbers from 3 systems, formatting them, then writing the narrative.
- Prompt used: *"Here are the key metrics for March: Total Revenue THB 2.4M (+8% MoM), Gross Margin 34% (-2pp), Top Category: Beverages (THB 620K), Worst Category: Electronics (-15% MoM), Inventory Turnover: 6.2x, Customer Transactions: 3,840. Write a 2-paragraph management summary for the CEO highlighting what went well, what needs attention, and one recommended action."*
- Claude's output: A polished, narrative executive summary that interpreted the numbers, flagged the margin compression despite revenue growth, and recommended a pricing review for the electronics category.
- Result: Report produced in 15 minutes; CEO praised the clarity compared to previous data-dump format.

**Use Case 4 — Finding the Real Top Performers (Not Just by Revenue)**
- Situation: The buying team allocates the most shelf space to the highest-revenue products. But some high-revenue products have thin margins and slow turnover, while some mid-revenue products are highly profitable and sell fast.
- Prompt used: *"This product table has columns for Revenue, Cost, Gross Margin %, and Units Sold. Rank products by a combined score that weights Gross Margin 40%, Revenue 40%, and Units Sold 20%. Show me the true top 10 performers under this weighting."*
- Claude's output: Produced a weighted ranking that reordered the top 10 significantly — 4 previously overlooked products were revealed as high-priority for expanded shelf space.
- Result: Next shelf planogram gave expanded space to the 4 newly identified top performers; category margin improved 3pp over the next quarter.

#### Group Activity — Report Generation Challenge
- Groups of 3–4 participants
- Each group receives the same sales dataset
- Task: produce a 1-page management summary using Claude Cowork in 30 minutes
- Groups present findings — compare how different prompts produce different insights

#### Key Prompts to Practice
```
"Analyze this monthly sales data and identify the top 5 trends I should report to management."
"Write a management summary paragraph for this table showing Q1 retail sales by category."
"Which product categories are underperforming compared to the same period last year?"
"What does this customer purchase data suggest about our most loyal customer segment?"
```

---

### Day 1 Wrap-Up & Q&A — 16:30 to 17:00
- Recap: 3 things learned, 2 things to try tomorrow, 1 question remaining
- Participants write one prompt they plan to use at work next week
- Preview of Day 2: from data to decisions

---

## DAY 2: Business Intelligence & Strategic Retail Applications

---

### Module 6 — Introduction to Retail Business Intelligence (BI)
**Time:** 09:00 – 09:30 (30 min)
**Format:** Presentation & Discussion

#### Learning Objectives
- Define Business Intelligence in a retail context
- Understand key retail KPIs and metrics
- Map how Claude Cowork fits into a BI workflow

#### Content Outline
1. What Is BI and Why Does It Matter in Retail?
   - BI = turning raw data into decisions
   - Difference between reporting (what happened) vs. analytics (why) vs. intelligence (what to do)
   - BI maturity model: from spreadsheets to dashboards to predictive

2. Key Retail KPIs
   - Sales KPIs: revenue, gross margin, sell-through rate, average basket size
   - Inventory KPIs: inventory turnover, days of stock, shrinkage rate
   - Customer KPIs: customer acquisition cost, repeat purchase rate, lifetime value
   - Operations KPIs: labor productivity, store conversion rate

3. Claude Cowork in the BI Workflow
   - Data preparation → Claude Cowork → Insight generation → Decision
   - How Claude complements Excel, Power BI, and other tools
   - When to use Claude vs. when to use a dedicated BI platform

#### Examples & Use Cases

**Use Case 1 — From "We Have Data" to "We Have Insight"**
- Situation: A retail chain has 3 years of POS data, a customer loyalty database, and monthly inventory exports — but no one is regularly analyzing them together. Management makes decisions based on gut feeling.
- With Claude Cowork BI approach: Start by defining 5 key questions the business needs to answer monthly (e.g., "Which store is underperforming and why?"). Claude helps frame the questions, identify which data sources answer them, and structure a simple Excel-based BI report.
- Result: Monthly BI meeting introduced with data-backed agenda; first meeting identified a store that was overstocked in 2 categories and losing sales in 1 — decisions made in that meeting recovered THB 80,000 in trapped inventory within 30 days.

**Use Case 2 — Choosing the Right KPIs for Different Audiences**
- Situation: The CEO wants a 5-number snapshot. The store manager wants operational detail. The buyer wants product-level metrics. Currently everyone gets the same massive spreadsheet.
- With Claude Cowork: Ask Claude to suggest KPI sets for each audience from a master metric list.
- Prompt used: *"We have these 20 available retail metrics: [list]. Suggest which 5 are most relevant for: (a) CEO strategic review, (b) Store Manager daily operations, (c) Buying team product decisions."*
- Claude's output: Three distinct KPI sets with rationale for each, ready to build three separate report views.
- Result: Each stakeholder gets a focused, relevant report; decision speed improved because information overload was reduced.

**Use Case 3 — Understanding the BI Maturity Gap**
- Situation: The company has been "doing BI" with monthly Excel reports, but leadership wants to know what the next level looks like and whether it's worth the investment.
- With Claude Cowork: Use Claude as a thought partner to map the maturity journey.
- Prompt used: *"Describe the 4 stages of retail BI maturity from basic to advanced. For each stage, give one example of what a retail company can do at that level and what it enables them to decide."*
- Claude's output: A clear 4-stage model (Descriptive → Diagnostic → Predictive → Prescriptive) with retail-specific examples at each stage.
- Result: Leadership team aligned on where they currently sit (Stage 1–2) and agreed on a 12-month roadmap to reach Stage 3.

---

### Module 7 — Claude Cowork for BI Report Generation
**Time:** 09:30 – 10:45 (75 min)
**Format:** Hands-On Exercise & Coaching

#### Learning Objectives
- Build dynamic BI reports using Claude Cowork and Excel
- Visualize data with Claude's charting recommendations
- Generate actionable insights from multi-source retail data

#### Content Outline
1. Dynamic Report Structures
   - Designing a retail performance dashboard: what goes where and why
   - Using Claude to recommend chart types for specific data
   - Building monthly, quarterly, and annual report templates

2. Visualization Guidance
   - Ask Claude: "What chart best shows inventory turnover over 12 months?"
   - Excel chart creation steps from Claude's instructions
   - Color, labeling, and formatting for executive audiences

3. Multi-Source Data Integration
   - Combining sales + inventory + customer data in one report
   - Asking Claude to reconcile discrepancies between data sources
   - Linking KPIs to business outcomes in narrative commentary

#### Examples & Use Cases

**Use Case 1 — Building a One-Page CEO Dashboard from Scratch**
- Situation: The retail director wants a single page that shows the company's retail health every month without digging through multiple reports.
- Prompt used: *"Design a one-page retail health dashboard for a CEO. We have monthly data for: revenue by store, gross margin by category, inventory turnover, top 5 and bottom 5 SKUs, customer transaction count, and repeat purchase rate. Suggest the layout, which chart type for each metric, and what KPI numbers to display prominently."*
- Claude's output: A detailed dashboard blueprint with: 2 bar charts (revenue by store, SKU performance), 1 line chart (margin trend), 3 KPI number boxes (Revenue, Transactions, Repeat Rate), 1 traffic-light table (inventory status).
- Result: Dashboard built in 2 hours; CEO adopted it as the standard monthly review format.

**Use Case 2 — Choosing the Right Chart for the Right Story**
- Situation: An analyst has been using pie charts to show category share of revenue for 3 years. The finance director asks her to show how each category's share has changed over time — she's not sure what chart to use.
- Prompt used: *"I want to show how the revenue share of 5 product categories has changed over 12 months. What chart type should I use and why? Give me step-by-step instructions to build it in Excel."*
- Claude's output: Recommended a stacked area chart (not pie) because it shows both composition and change over time. Provided 8-step Excel instructions.
- Result: More informative visualization adopted; immediately visible that the Beverages category had been steadily taking share from Electronics over the year.

**Use Case 3 — Reconciling POS vs. ERP Inventory Discrepancies**
- Situation: The monthly BI report shows different revenue figures from the POS system vs. the ERP system — a THB 120,000 gap that no one can explain. The discrepancy makes management distrust both reports.
- Prompt used: *"Here are two revenue tables for March: one from our POS system and one from our ERP. They show different totals. List the most common reasons for discrepancies between POS and ERP revenue data and suggest a step-by-step reconciliation process."*
- Claude's output: Identified 5 common causes (returns processing timing, rounding differences, void transactions, discount handling, tax-inclusive vs. exclusive reporting) and a 6-step reconciliation checklist.
- Result: Team identified the cause (returns processed in ERP 3 days after POS) and implemented a reconciliation rule; discrepancy eliminated in subsequent months.

**Use Case 4 — Turning Raw Data into a Board-Ready Narrative**
- Situation: The quarterly board report needs a 1-page retail performance narrative. The data team produces the numbers but the writing falls to the CEO's assistant, who is not a retail expert.
- Prompt used: *"Here is our Q1 retail performance data: [paste table]. Write a board-level narrative that interprets these results in 3 paragraphs: (1) overall performance vs. last quarter, (2) key drivers and risks, (3) recommended focus areas for Q2."*
- Claude's output: A polished, board-appropriate narrative that connected the data to strategic context.
- Result: Board report prepared in 30 minutes instead of half a day; narrative quality improved significantly.

#### Hands-On Exercise — Dashboard Build
- Participants receive 3 datasets: monthly sales, current inventory, customer purchase log
- Task: build a one-page retail performance dashboard in Excel with Claude's guidance
- Must include: 3 charts, 5 KPIs, 1 insight narrative paragraph
- Expected time: 45 min

#### Key Prompts to Practice
```
"Based on this sales and inventory data, what are the 5 most important KPIs I should show on a retail dashboard?"
"What type of chart is best to compare monthly sales performance across 4 store locations?"
"Write a 2-paragraph executive commentary for this quarterly performance dashboard."
"I have sales data from our POS and inventory data from our ERP. How do I reconcile these to show true sell-through rate?"
```

---

### Break — 10:45 to 11:00

---

### Module 8 — Advanced Retail Analytics & Predictive Modeling
**Time:** 11:00 – 12:30 (90 min)
**Format:** Case Studies & Interactive Session

#### Learning Objectives
- Segment customers using Claude Cowork and data
- Apply predictive logic for churn and demand forecasting
- Generate personalized marketing campaign briefs

#### Content Outline
1. Customer Segmentation
   - RFM framework: Recency, Frequency, Monetary value
   - Asking Claude to segment customers from a transaction file
   - Defining actionable segments: VIPs, at-risk, lapsed, new

2. Churn Prediction Logic
   - Signals of churn: declining purchase frequency, smaller basket size, longer gaps
   - Asking Claude to identify at-risk customers from behavioral data
   - Building a simple churn flag in Excel with Claude's formula help

3. Demand Forecasting with Claude
   - Using 12–24 months of sales history for trend extrapolation
   - Accounting for seasonality, promotions, and external factors
   - Generating next-quarter demand estimates with confidence ranges

4. Personalized Marketing Campaign Generation
   - Customer segment → campaign brief → message drafts
   - Email, SMS, and in-store promotion copy generation with Claude
   - A/B testing concepts: ask Claude to write two versions of a promotion

#### Examples & Use Cases

**Use Case 1 — RFM Segmentation to Focus Marketing Spend**
- Situation: The marketing team sends the same monthly promotion email to all 8,000 customers in the database. Open rates are 12% and coupon redemption is 3%. Budget is being wasted on unresponsive customers.
- Prompt used: *"Here is a table of customer transaction data with columns: Customer ID, Last Purchase Date, Total Purchases (last 12 months), Total Spend (last 12 months). Score each customer on Recency, Frequency, and Monetary value on a 1–3 scale and assign them to one of these segments: VIP, Loyal, Potential Loyalist, At Risk, Lapsed."*
- Claude's output: Segmented all 8,000 customers into 5 groups; identified 420 VIPs (5%), 1,200 At Risk (15%), and 2,800 Lapsed (35%).
- Result: Marketing focused next campaign on the 1,200 At Risk customers with a targeted win-back offer; redemption rate on that segment jumped to 18%.

**Use Case 2 — Early Churn Detection**
- Situation: The loyalty program manager notices revenue per customer declining but can't identify which customers are about to stop buying before it's too late to intervene.
- Prompt used: *"This customer purchase history shows transactions over 18 months. For each customer, calculate the gap between their last 3 purchases. Flag customers where the gap between purchases has been increasing consistently for 3 consecutive purchase cycles — these may be churning."*
- Claude's output: Formula logic and explanation for calculating inter-purchase gaps; identified 340 customers showing consistent gap widening as "early churn risk."
- Result: Personalized retention offer sent to the 340 flagged customers; 110 made a purchase within 30 days of receiving the offer.

**Use Case 3 — Seasonal Demand Forecasting for a New Product**
- Situation: The buying team is introducing a new sunscreen range for summer. They have no sales history for this specific product but do have 2 years of data for similar product categories.
- Prompt used: *"We are launching a new sunscreen product line. We have 2 years of sales data for our existing Personal Care and Beach Accessories categories. Use the seasonal patterns in those categories to estimate monthly demand for the new range for the next 6 months. Assume an initial market capture of 3% of category sales volume."*
- Claude's output: Monthly demand estimate with seasonal multipliers applied, sensitivity table showing impact of 2% vs. 3% vs. 5% capture rate, suggested initial order quantities.
- Result: Buying team ordered with confidence; sell-through for the new range was 82% in Month 1, avoiding both stockout and overstock.

**Use Case 4 — Personalized SMS Campaign Copy Generation**
- Situation: The marketing coordinator needs to write 4 different SMS messages for 4 customer segments ahead of a store anniversary sale. Writing 4 distinct, compelling messages takes her 2 hours and always feels repetitive.
- Prompt used: *"Write 4 SMS messages (max 160 characters each) for our anniversary sale — one for each of these segments: (1) VIP customers who spent over THB 5,000 last year, (2) Loyal customers who buy monthly, (3) At-Risk customers who haven't bought in 60 days, (4) New customers who made their first purchase in the last 30 days. Tone: warm, exclusive for VIP; friendly for Loyal; urgent for At-Risk; welcoming for New."*
- Claude's output: 4 distinct, character-counted SMS messages with appropriate tone differentiation.
- Result: Campaign sent in 30 minutes; the At-Risk segment SMS had a 23% click-through rate vs. the standard 8%.

#### Case Study — Customer Reactivation Campaign
- Scenario: 30% of customers haven't purchased in 90+ days
- Teams use Claude to:
  1. Define the "lapsed customer" segment criteria
  2. Identify top 5 reasons for lapse from survey/return data
  3. Write a reactivation email with a personalized offer
  4. Suggest which product category to feature based on past purchase history

#### Key Prompts to Practice
```
"Segment these customers into 4 groups based on RFM scoring. Describe each segment's characteristics."
"Which customers in this list show signs of churn based on declining purchase frequency over the last 3 months?"
"Forecast next quarter's demand for Product Category X using the last 18 months of sales data."
"Write a reactivation email for customers who haven't purchased in 90 days. Include a 15% discount offer and reference their most purchased category."
```

---

### Lunch Break — 12:30 to 13:30

---

### Module 9 — Strategic Decision-Making with AI in Retail
**Time:** 13:30 – 15:00 (90 min)
**Format:** Group Activity & Brainstorming

#### Learning Objectives
- Apply Claude Cowork for scenario planning and competitive analysis
- Use AI to evaluate market entry and product expansion decisions
- Develop data-backed retail growth strategies

#### Content Outline
1. Scenario Planning with Claude
   - Building 3-scenario models: base case, upside, downside
   - Asking Claude to define assumptions for each scenario
   - Translating scenarios into resource and inventory decisions

2. Competitive Analysis
   - What data is available: public pricing, product ranges, store coverage
   - Asking Claude to synthesize competitive intelligence into a SWOT
   - Identifying white-space opportunities from competitive gaps

3. Market Entry & Expansion Decisions
   - Location analysis: demographics, foot traffic, competitor proximity
   - Product line expansion: which categories to add and why
   - Using Claude to draft a business case for management approval

4. Long-Term Retail Strategy
   - Building a 12-month retail strategy roadmap with Claude
   - Prioritizing initiatives by impact and feasibility
   - Linking strategy back to KPIs from Module 6

#### Examples & Use Cases

**Use Case 1 — Three-Scenario Revenue Planning for Q3**
- Situation: The CFO asks for revenue projections for Q3 based on 3 scenarios: if the baht strengthens (affecting import costs), if a key competitor closes, and if a new shopping mall opens nearby. The team has never done scenario planning formally.
- Prompt used: *"Help me build a 3-scenario model for our Q3 retail revenue. Base case: same conditions as Q2. Upside case: a competitor store closes, diverting 15% of their customer traffic to us. Downside case: baht weakens by 8%, increasing our cost of goods. For each scenario, list the key assumptions, revenue impact estimate, and top 2 actions we should take."*
- Claude's output: A structured 3-scenario table with assumptions, estimated revenue ranges, and recommended responses for each scenario.
- Result: Board approved a contingency inventory plan for the downside scenario 8 weeks before Q3 began — when the baht did weaken, the company was prepared.

**Use Case 2 — Competitive SWOT from Market Intelligence**
- Situation: A senior buyer attended a trade show and collected competitor product brochures, pricing lists, and overheard conversations. She needs to turn this unstructured intelligence into a competitive analysis for management.
- Prompt used: *"Based on the following observations about our main competitor [paste notes], write a SWOT analysis from our perspective. Highlight where we have a competitive advantage and where we are exposed."*
- Claude's output: A structured SWOT with 4 Strengths, 3 Weaknesses, 4 Opportunities, and 3 Threats — each with a brief narrative explanation.
- Result: Competitive briefing prepared in 40 minutes; management identified 2 product gaps where the company could capture market share.

**Use Case 3 — New Product Category Expansion Business Case**
- Situation: The retail director wants to add a "Home Office" category to stores in response to the work-from-home trend. She needs a business case for the board but doesn't have a template or the time to write one from scratch.
- Prompt used: *"Draft a business case for adding a Home Office product category to our retail stores. Include: market rationale, target customer profile, suggested initial SKU range (10–15 products), estimated investment required, revenue potential in Year 1, key risks, and success metrics."*
- Claude's output: A complete one-page business case with all requested sections, including a suggested SKU list and a simple payback calculation framework.
- Result: Board approved the category pilot in 2 stores; Home Office became the 3rd fastest growing category within 6 months.

**Use Case 4 — 12-Month Retail Growth Roadmap**
- Situation: The management team agrees they need to "grow the business" but there are 15 different ideas on the table ranging from new stores to loyalty programs to online channels. They need a structured way to prioritize.
- Prompt used: *"Here are 15 retail growth initiatives our team has proposed: [list]. Evaluate each one against two criteria: (1) estimated revenue impact (High/Medium/Low) and (2) ease of implementation (Easy/Medium/Hard). Then suggest a 12-month roadmap that sequences the highest-impact, easiest initiatives first."*
- Claude's output: A 2×2 priority matrix placing all 15 initiatives, followed by a phased 12-month roadmap with Q1–Q4 groupings.
- Result: Team aligned on 5 priority initiatives for Year 1; eliminated debate about lower-priority items.

#### Group Activity — Strategy Sprint
- Groups of 4–5 participants (mixed roles)
- Scenario given: company is considering opening a new retail location or expanding an existing product category
- Groups have 40 min to use Claude Cowork to:
  1. Define key decision criteria
  2. Build a simple scenario analysis
  3. Draft a 1-page business case recommendation
- Groups present 5-minute pitches to the room

#### Key Prompts to Practice
```
"Help me build a 3-scenario model for our retail revenue next quarter. What assumptions should define each scenario?"
"Based on these competitor data points, write a SWOT analysis for our retail position."
"Draft a business case for opening a new retail location in [area], including key risks and success criteria."
"Create a 12-month retail growth roadmap prioritized by revenue impact and ease of implementation."
```

---

### Break — 15:00 to 15:15

---

### Module 10 — Ethical AI, Data Governance & Future Trends
**Time:** 15:15 – 16:15 (60 min)
**Format:** Discussion & Q&A

#### Learning Objectives
- Understand responsible AI use in retail contexts
- Apply data privacy principles relevant to retail operations
- Anticipate emerging AI trends affecting the retail sector

#### Content Outline
1. Responsible AI Use in Retail
   - What Claude Cowork can and should not be used for
   - Bias awareness: when AI recommendations can mislead
   - Human oversight: Claude as assistant, not decision-maker

2. Data Privacy & Compliance
   - Types of sensitive retail data: customer PII, financial records, employee data
   - Key regulations: GDPR principles, Thai PDPA requirements
   - What NOT to paste into Claude: identifying customer information without consent
   - Best practice: anonymize before analyzing

3. Data Security Considerations
   - Internal vs. cloud data handling
   - Access controls: who should use Claude Cowork and for what
   - Logging and auditing AI-assisted decisions

4. Future Trends in Retail AI
   - Agentic AI: automated workflows that act, not just advise
   - Multimodal AI: analyzing images of store shelves, receipts, product photos
   - AI-powered personalization at scale
   - What skills will matter most in 3–5 years

#### Examples & Use Cases

**Use Case 1 — When AI Gets It Wrong: A Cautionary Tale**
- Situation: A retail manager asks Claude Cowork to recommend which staff members to retain based on their sales performance data, without realizing the data is skewed because top performers were given the best store locations.
- What happened: Claude's recommendation favored staff at high-traffic locations — the analysis was technically correct but based on unfair input data.
- Lesson: AI reflects the data you give it. If the data has bias (location advantage, seasonal differences, unequal opportunity), the AI output will inherit that bias. Always review AI recommendations with human context before acting.
- Discussion point: "What decisions in your role should NEVER be made based on AI output alone?"

**Use Case 2 — Anonymizing Customer Data Before Analysis**
- Situation: A marketing analyst wants to use Claude Cowork to analyze customer purchase patterns but the data includes full names, phone numbers, and email addresses.
- Wrong approach: Pasting the raw customer file including personal identifiers into Claude.
- Right approach:
  - Step 1: Replace names with Customer_ID codes in Excel before pasting
  - Step 2: Remove or mask phone/email columns
  - Step 3: Ask Claude to analyze by Customer_ID only
  - Step 4: Re-link insights to individual records only within internal secure systems
- Prompt used correctly: *"This table uses Customer_ID codes (not real names). Segment by purchase behavior — I will map IDs back to customer names internally."*
- Result: Full analytical value achieved while keeping personal data within the company's secure environment.

**Use Case 3 — Data Access Control Policy**
- Situation: After the workshop, the company decides to roll out Claude Cowork to 45 staff across 3 departments. IT asks: "Who should have access and to what level?"
- With Claude Cowork: Use Claude to help design an access policy framework.
- Prompt used: *"We are rolling out an AI assistant to 45 retail staff in Sales, Inventory, and Finance. Draft a simple 3-tier access policy: what data each department may use with the AI, what they may NOT input, and who approves exceptions."*
- Claude's output: A draft policy table with department-specific rules, prohibited data types, and an escalation process.
- Result: IT implemented the policy within 2 weeks of the workshop; governance was in place before full rollout.

**Use Case 4 — Future Trend: AI Reading Store Shelf Images**
- Situation (forward-looking example): In 2026–2027, multimodal AI tools can analyze photos of physical store shelves to detect out-of-stock products, planogram compliance issues, or competitor products on the shelf.
- How it works with Claude: Upload a photo of a shelf, ask "Identify any gaps on this shelf and compare the product placement to this planogram reference."
- Implication for participants: The skills learned in this workshop (prompt engineering, data interpretation, AI oversight) are directly transferable to these more advanced future use cases — the foundation does not change.

#### Discussion Prompts for the Room
- "What data in your current role would you NOT want to put into an AI tool? Why?"
- "If Claude gave you a recommendation that felt wrong, what would you do?"
- "What retail task do you believe AI will fully automate in the next 3 years?"

---

### Module 11 — Workshop Synthesis & Action Planning
**Time:** 16:15 – 16:45 (30 min)
**Format:** Group Presentation & Feedback

#### Learning Objectives
- Consolidate two days of learning into concrete next steps
- Identify department-specific Claude Cowork applications
- Assign internal champions for post-workshop adoption

#### Content Outline
1. Key Takeaways Review
   - Facilitator recap: top 10 prompts and techniques from the two days
   - Participant input: what surprised you most?

2. Departmental Action Planning
   - Each team completes a 90-Day AI Integration Plan (template provided)
   - Format: 3 tasks to automate, 2 reports to enhance, 1 new analysis to build
   - Identify data sources, tools needed, and who owns each initiative

3. Internal AI Champion Identification
   - What an AI champion does: supports adoption, builds the prompt library, troubleshoots
   - Each department nominates one champion
   - Champions receive additional resource list and suggested next learning steps

#### Examples & Use Cases

**Use Case 1 — Inventory Team 90-Day Action Plan**
- Task 1 to Automate: Weekly reorder point calculation report
  - Currently: 3 hours manual Excel work every Monday
  - With Claude: 20-minute prompt + Excel macro workflow
- Task 2 to Automate: Supplier late delivery escalation emails
  - Currently: Individually written, takes 1 hour per week
  - With Claude: Template prompt generates all emails in 10 minutes
- Task 3 to Automate: Stock risk flagging for finance review
  - Currently: Manual review of 500+ SKUs
  - With Claude: Automated flag logic in Excel using Claude-generated formula
- New Analysis to Build: Seasonal demand forecast for top 50 SKUs
  - Using Module 4 and 8 techniques
  - Target: Ready before peak season planning cycle in Month 2

**Use Case 2 — Sales Team 90-Day Action Plan**
- Task 1 to Automate: Monthly category performance summary for store managers
  - Currently: 4 hours to write every month
  - With Claude: 30-minute workflow using Module 5 report generation
- Task 2 to Automate: Weekly top/bottom 10 product list
  - Currently: Manual sort and copy from POS export
  - With Claude-generated Excel macro: Runs in under 1 minute
- New Analysis to Build: Customer basket analysis to identify cross-selling pairs
  - Using Module 5 basket analysis techniques
  - Target: Present 5 cross-selling recommendations to store managers by Month 3

**Use Case 3 — The Internal AI Champion Role in Practice**
- What the champion does week to week:
  - Week 1–2: Collects prompt examples from all team members after workshop
  - Week 3–4: Organizes prompts into a shared "Prompt Library" document
  - Month 2: Runs a 30-minute internal "lunch & learn" to share top 5 discoveries
  - Month 3: Identifies 2 new use cases from the team and tests them
  - Ongoing: First point of contact when a colleague's prompt isn't working
- Why it matters: Without a champion, 80% of workshop learnings are lost within 6 weeks. With one, adoption compounds over time.

#### 90-Day Action Plan Template (per department)
| | Details |
|---|---|
| **Department** | |
| **Champion Name** | |
| **Task 1 to Automate** | What: / Data needed: / Deadline: |
| **Task 2 to Automate** | What: / Data needed: / Deadline: |
| **Task 3 to Automate** | What: / Data needed: / Deadline: |
| **Report 1 to Enhance** | Current format: / Target format: / Owner: |
| **Report 2 to Enhance** | Current format: / Target format: / Owner: |
| **New Analysis to Build** | Goal: / KPIs to track: / Audience: |
| **Top Prompt to Share** | |
| **Biggest Obstacle** | |

---

### Workshop Wrap-Up & Feedback — 16:45 to 17:00
- Certificate of completion distribution
- Participant feedback form (written or digital)
- Share: post-workshop resources, prompt library access, follow-up contact
- Closing: encourage participants to use Claude Cowork within 24 hours of leaving

---

## Facilitator Materials Checklist

### Pre-Workshop
- [ ] Sample datasets prepared (sales, inventory, customer, supplier)
- [ ] Claude Cowork access confirmed for all devices
- [ ] Excel workbooks pre-loaded with exercise data
- [ ] Printed prompt cheat sheets (one per participant)
- [ ] Module slide decks finalized
- [ ] 90-Day Action Plan templates printed
- [ ] Feedback forms prepared

### During Workshop
- [ ] Participant name cards
- [ ] Screen projection confirmed
- [ ] Breakout group assignments ready
- [ ] Timer for activities

### Post-Workshop
- [ ] Certificates prepared
- [ ] Prompt library shared (internal drive or email)
- [ ] Follow-up email drafted with resource links
- [ ] Feedback forms collected and reviewed

---

## Participant Quick Reference: Top 20 Retail Prompts

### Data Management
1. "Review this data and list all quality issues you find."
2. "Standardize the [column] using these approved values: [list]."
3. "Add a calculated column for [metric] using this logic: [explain]."

### Excel Automation
4. "Write an Excel formula to calculate [goal] from columns [A, B, C]."
5. "Build a pivot table structure to show [analysis] from this data."
6. "This formula returns [error]. Fix it and explain why."
7. "Write a VBA macro that [describes task]."

### Inventory & Supply Chain
8. "Calculate reorder point given: daily sales = [X], lead time = [Y] days."
9. "Which SKUs have fewer than [N] days of stock at current sales rate?"
10. "Draft an urgent supplier email for expedited delivery of [product]."

### Sales Analysis
11. "Summarize the top 5 trends in this monthly sales data."
12. "Write a management summary paragraph for this performance table."
13. "Which categories are underperforming vs. last year?"

### Business Intelligence
14. "What 5 KPIs should appear on a retail performance dashboard?"
15. "What chart type best shows [data relationship]?"
16. "Write an executive commentary for this dashboard."

### Customer Analytics
17. "Segment these customers into 4 groups based on RFM."
18. "Which customers show signs of churn in the last 3 months?"
19. "Write a reactivation email for lapsed customers with a [X]% offer."

### Strategy
20. "Build a 3-scenario model for [business question] with key assumptions."

---

## Assessment & Certification Criteria

Participants receive a certificate upon completing both days and demonstrating:

| Criterion | Evidence |
|---|---|
| Attended all modules | Sign-in sheet |
| Completed Exercise A & B (Day 1) | Facilitator observation |
| Contributed to group case study | Group activity participation |
| Submitted 90-Day Action Plan | Written document |
| Completed feedback form | Submitted form |

---

*Curriculum Version 1.1 — March 2026*
*Developed for the Two-Day Claude Cowork Workshop: Retail Excellence Program*
