# Claude Cowork with Excel — Retail Usage Examples & Instructions
## A Practical Guide for Retail Professionals

---

## Table of Contents

1. [Getting Started — Setup & Installation](#1-getting-started)
2. [Understanding the Interface](#2-understanding-the-interface)
3. [Example 1 — Daily Sales Data Cleanup](#example-1)
4. [Example 2 — Sales Formula Builder](#example-2)
5. [Example 3 — Inventory Reorder Alert System](#example-3)
6. [Example 4 — Customer Segmentation Analysis](#example-4)
7. [Example 5 — Sales Trend Analysis & Reporting](#example-5)
8. [Example 6 — Multi-Store Consolidation Dashboard](#example-6)
9. [Example 7 — Demand Forecasting for Seasonal Events](#example-7)
10. [Example 8 — Product Performance Ranking](#example-8)
11. [Example 9 — Supplier Performance Tracker](#example-9)
12. [Example 10 — Automated Retail KPI Dashboard](#example-10)
13. [Prompt Cheat Sheet for Retail Excel Work](#prompt-cheat-sheet)
14. [Tips, Limitations & Best Practices](#tips-and-best-practices)
15. [Online Resources & Further Reading](#resources)

---

## 1. Getting Started — Setup & Installation <a name="1-getting-started"></a>

### What You Need

| Requirement | Details |
|---|---|
| **Software** | Microsoft Excel (Desktop for Windows or Mac, or Excel on the Web) |
| **Subscription** | Claude Pro ($20/month), Max, Team, or Enterprise plan |
| **Time to set up** | Approximately 10 minutes |
| **Internet** | Required — Claude processes your queries via Anthropic's servers |

### Step-by-Step Installation

**Step 1 — Open the Add-in Store**
- Open Microsoft Excel
- Click the **Insert** tab on the ribbon
- Select **Get Add-ins** (or **Office Add-ins** depending on your Excel version)
- This opens the Microsoft AppSource marketplace

**Step 2 — Find Claude**
- In the search bar, type **"Claude AI"**
- Locate the official **Claude by Anthropic** add-in
- Click **Get it now** or **Add**
- Accept any permission prompts

**Step 3 — Activate the Sidebar**
- Go to the **Home** tab on the ribbon
- Click **My Add-ins**
- Find **Claude AI** in your add-in list and click to activate
- The Claude sidebar will appear on the right side of your Excel window

**Step 4 — Sign In**
- Enter your Claude Pro (or Team/Enterprise) credentials in the sidebar
- Once authenticated, you're ready to start

**Keyboard Shortcut:** Press `Ctrl + Alt + C` (Windows) or `Ctrl + Option + C` (Mac) to quickly open the Claude sidebar at any time.

### What Claude Can See

When you open the Claude sidebar, it has access to:
- Your **entire open workbook** — all sheets, all tabs
- **Cell values, formulas, named ranges**, and table structures
- **Formatting, conditional formatting**, and data validation rules
- **Relationships between sheets** — cross-tab formula references

Claude operates as a **read-only analyst by default**. In Agent Mode, it can make edits to your workbook (with your permission via the "Ask before edits" setting).

---

## 2. Understanding the Interface <a name="2-understanding-the-interface"></a>

### The Claude Sidebar

The sidebar contains:

| Element | What It Does |
|---|---|
| **Chat input box** | Type your questions or instructions here |
| **Conversation history** | Scroll through your previous questions and Claude's answers |
| **Cell references** | Claude's answers include clickable cell references (e.g., `B14`, `Sheet2!D7`) so you can verify its logic |
| **Copy buttons** | One-click copy for formulas, code, or text Claude generates |
| **Mode toggle** | Switch between read-only analysis and Agent Mode (edit-capable) |

### Two Modes of Operation

**Read-Only Mode (Default)**
- Claude reads and analyzes your workbook
- Provides explanations, formulas, insights, and recommendations
- Does NOT modify your spreadsheet
- Best for: analysis, learning, auditing, report generation

**Agent Mode**
- Claude can write formulas, create charts, format cells, and build pivot tables directly
- Uses "Ask before edits" setting — Claude describes what it wants to change and waits for your approval
- Best for: building dashboards, automating formatting, creating models

---

## 3. Example 1 — Daily Sales Data Cleanup <a name="example-1"></a>

### Scenario
You receive a daily POS export in Excel with messy data: inconsistent product names, blank cells in the quantity column, duplicate transaction rows, and dates in mixed formats. Before any analysis, this data needs to be clean.

### Your Excel Data (Before)

| Trans_ID | Date | Product | Category | Qty | Price | Store |
|---|---|---|---|---|---|---|
| T001 | 2026-03-01 | Coca Cola 330ml | beverages | 5 | 25 | Store A |
| T002 | 01/03/2026 | coca-cola 330 ml | Bev. | 3 | 25 | Store A |
| T003 | Mar 1, 2026 | Lay's Classic 75g | SNACKS | | 35 | Store B |
| T001 | 2026-03-01 | Coca Cola 330ml | beverages | 5 | 25 | Store A |
| T004 | 2026-03-01 | lays classic | Snack | 2 | 35 | Store B |

### Step-by-Step Instructions

**Step 1 — Ask Claude to Audit the Data**

Open the Claude sidebar and type:

> "Review the sales data in Sheet1. Identify all data quality issues including inconsistent names, duplicate rows, missing values, and date format problems. List each issue with the affected rows."

**What Claude Returns:**
Claude will provide a structured list like:
- **Duplicate rows:** Rows 2 and 5 have identical Trans_ID (T001) with matching data — likely a duplicate entry
- **Inconsistent product names:** "Coca Cola 330ml", "coca-cola 330 ml" appear to be the same product; "Lay's Classic 75g" and "lays classic" appear to be the same product
- **Inconsistent categories:** "beverages", "Bev.", "SNACKS", "Snack" — multiple variations of the same category
- **Missing values:** Row 4 (Trans_ID T003) has a blank Qty field
- **Date formats:** Three different date formats used (YYYY-MM-DD, DD/MM/YYYY, Mon D, YYYY)

**Step 2 — Ask Claude to Fix the Issues**

> "Now fix these issues. Standardize all dates to YYYY-MM-DD format. Standardize product names to title case with full descriptions. Use these category names: 'Beverages', 'Snacks', 'Personal Care', 'Household'. Remove duplicates based on Trans_ID. For the missing Qty, flag it as 'VERIFY' rather than guessing."

**Step 3 — Ask Claude to Generate the Cleaning Formulas**

If you prefer to apply fixes yourself using formulas (rather than Agent Mode), ask:

> "Instead of editing directly, give me the Excel formulas I need to clean this data in a new sheet. Include formulas for standardizing dates, a lookup table approach for product name correction, and a COUNTIF-based duplicate detector."

**What Claude Returns:**
```
Date standardization:    =TEXT(DATEVALUE(B2), "YYYY-MM-DD")
Duplicate detection:     =IF(COUNTIF($A$2:$A$100, A2)>1, "DUPLICATE", "OK")
Category cleanup:        =IF(OR(D2="beverages",D2="Bev.",D2="bevs"), "Beverages", 
                           IF(OR(D2="SNACKS",D2="Snack",D2="snacks"), "Snacks", D2))
```

### What You Learn
- How to use Claude as a data auditor before touching any data
- How to get both direct fixes (Agent Mode) and formula-based fixes (manual mode)
- The value of asking Claude to explain *what* is wrong before asking it to fix anything

---

## 4. Example 2 — Sales Formula Builder <a name="example-2"></a>

### Scenario
You have a sales transactions table and need to build several calculated columns: net revenue (accounting for discounts and promotions), cumulative daily revenue, and a performance rank column.

### Your Excel Data

| Row | A: SKU | B: Product | C: Qty | D: Unit Price | E: Discount % | F: Is Promo | G: Promo Price |
|---|---|---|---|---|---|---|---|
| 2 | SKU-101 | Shampoo 200ml | 12 | 89 | 5% | No | — |
| 3 | SKU-204 | Rice 5kg | 8 | 195 | 0% | Yes | 175 |
| 4 | SKU-317 | Laundry Detergent | 5 | 149 | 10% | No | — |
| 5 | SKU-422 | Instant Noodles 5-pack | 20 | 55 | 0% | Yes | 45 |

### Step-by-Step Instructions

**Step 1 — Net Revenue Formula**

Ask Claude:

> "Column H should calculate Net Revenue. If Column F says 'Yes' (promotional item), use Promo Price × Qty. Otherwise use Unit Price × Qty × (1 - Discount %). Write the formula for H2."

**Claude Returns:**
```
=IF(F2="Yes", G2*C2, D2*C2*(1-E2))
```
Plus a plain-English explanation: "This checks if the item is on promotion. If yes, it multiplies the promo price by quantity. If not, it calculates the regular price times quantity, then subtracts the discount percentage."

**Step 2 — Cumulative Revenue**

> "Column I should show cumulative revenue (running total of Column H). Write a formula that works when I drag it down."

**Claude Returns:**
```
=SUM($H$2:H2)
```

**Step 3 — Revenue Rank**

> "Column J should rank each row by Net Revenue, highest first. Use the RANK function."

**Claude Returns:**
```
=RANK(H2, $H$2:$H$100, 0)
```

**Step 4 — Conditional Highlight Request (Agent Mode)**

> "Using Agent Mode, highlight all rows in Column H where Net Revenue exceeds 1,000 in green, and rows below 500 in red using conditional formatting."

Claude will describe the conditional formatting rules it wants to apply, ask for your approval, then execute.

### What You Learn
- How to describe formulas in business language and get exact Excel syntax back
- How to chain multiple formula requests in one session
- How to use Agent Mode for formatting tasks that are tedious to do manually

---

## 5. Example 3 — Inventory Reorder Alert System <a name="example-3"></a>

### Scenario
You manage inventory for a retail store with 500 SKUs. Every morning, someone manually scrolls through the stock report to find items running low. You want to automate this entirely.

### Your Excel Data (Sheet: "Inventory")

| A: SKU | B: Product | C: Category | D: Current Stock | E: Avg Daily Sales | F: Lead Time (Days) | G: Reorder Point |
|---|---|---|---|---|---|---|
| SKU-101 | Shampoo 200ml | Personal Care | 45 | 8 | 7 | |
| SKU-204 | Rice 5kg | Grocery | 120 | 25 | 5 | |
| SKU-317 | Laundry Det. | Household | 12 | 4 | 10 | |

### Step-by-Step Instructions

**Step 1 — Calculate Reorder Points**

> "Column G should calculate the Reorder Point for each SKU using the formula: Reorder Point = Average Daily Sales × Lead Time × 1.5 (the 1.5 is a safety factor). Write the formula for G2."

**Claude Returns:**
```
=E2*F2*1.5
```

**Step 2 — Days of Stock Remaining**

> "Add a Column H called 'Days of Stock'. Calculate how many days of stock remain based on Current Stock divided by Avg Daily Sales. If Avg Daily Sales is zero, show 'No Sales Data' instead of a division error."

**Claude Returns:**
```
=IF(E2=0, "No Sales Data", D2/E2)
```

**Step 3 — Reorder Status Flag**

> "Add Column I called 'Status'. If Current Stock is below Reorder Point, display 'REORDER NOW' in the cell. If Current Stock is between 1× and 1.5× the Reorder Point, display 'LOW STOCK'. Otherwise display 'OK'."

**Claude Returns:**
```
=IF(D2<G2, "REORDER NOW", IF(D2<G2*1.5, "LOW STOCK", "OK"))
```

**Step 4 — Build the Alert Macro**

> "Write an Excel VBA macro that: (1) scans the Status column, (2) highlights 'REORDER NOW' rows in red, (3) highlights 'LOW STOCK' rows in yellow, (4) copies all REORDER NOW rows to a new sheet called 'Urgent Reorders', and (5) adds today's date as a header on that sheet."

**Claude Returns a Complete VBA Macro:**
```vba
Sub GenerateReorderAlerts()
    Dim ws As Worksheet, alertSheet As Worksheet
    Dim lastRow As Long, i As Long, alertRow As Long
    
    Set ws = ThisWorkbook.Sheets("Inventory")
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    
    On Error Resume Next
    Application.DisplayAlerts = False
    ThisWorkbook.Sheets("Urgent Reorders").Delete
    Application.DisplayAlerts = True
    On Error GoTo 0
    
    Set alertSheet = ThisWorkbook.Sheets.Add(After:=ThisWorkbook.Sheets(ThisWorkbook.Sheets.Count))
    alertSheet.Name = "Urgent Reorders"
    alertSheet.Range("A1").Value = "Urgent Reorders — " & Format(Date, "YYYY-MM-DD")
    alertSheet.Range("A1").Font.Bold = True
    
    ws.Rows(1).Copy alertSheet.Range("A2")
    alertRow = 3
    
    For i = 2 To lastRow
        Select Case ws.Cells(i, 9).Value
            Case "REORDER NOW"
                ws.Rows(i).Interior.Color = RGB(255, 200, 200)
                ws.Rows(i).Copy alertSheet.Range("A" & alertRow)
                alertRow = alertRow + 1
            Case "LOW STOCK"
                ws.Rows(i).Interior.Color = RGB(255, 255, 200)
            Case Else
                ws.Rows(i).Interior.ColorIndex = xlNone
        End Select
    Next i
    
    alertSheet.Columns.AutoFit
    MsgBox alertRow - 3 & " items need urgent reordering.", vbInformation
End Sub
```

**Step 5 — Paste and Run the Macro**
1. Press `Alt + F11` to open the VBA Editor
2. Click **Insert > Module**
3. Paste the macro code Claude provided
4. Close the VBA Editor
5. Press `Alt + F8`, select `GenerateReorderAlerts`, and click **Run**

### What You Learn
- How to build a complete inventory management system using progressive prompts
- How to combine formulas and VBA macros for end-to-end automation
- How to describe business logic in plain English and get production-ready code

---

## 6. Example 4 — Customer Segmentation Analysis (RFM) <a name="example-4"></a>

### Scenario
You have 12 months of customer transaction data and want to segment customers into groups based on how recently they purchased (Recency), how often (Frequency), and how much they spend (Monetary) — the classic RFM model used in retail marketing.

### Your Excel Data (Sheet: "Transactions")

| A: Customer_ID | B: Date | C: Transaction_ID | D: Amount |
|---|---|---|---|
| C001 | 2026-03-10 | T5001 | 450 |
| C002 | 2026-02-15 | T4988 | 1,200 |
| C001 | 2026-01-22 | T4872 | 320 |
| C003 | 2025-08-01 | T4201 | 85 |

### Step-by-Step Instructions

**Step 1 — Ask Claude to Build the RFM Table**

> "I have customer transaction data in Sheet 'Transactions' with columns Customer_ID, Date, Transaction_ID, and Amount. Create an RFM analysis: for each unique customer, calculate Recency (days since their last purchase as of today), Frequency (total number of transactions), and Monetary (total amount spent). Show me the formulas to build this in a new sheet."

**Claude Returns Formulas for a New "RFM" Sheet:**
```
Customer_ID (unique list):  Use Remove Duplicates or UNIQUE() function
Recency:                    =TODAY()-MAXIFS(Transactions!B:B, Transactions!A:A, A2)
Frequency:                  =COUNTIF(Transactions!A:A, A2)
Monetary:                   =SUMIF(Transactions!A:A, A2, Transactions!D:D)
```

**Step 2 — Score Each Dimension**

> "Now score each customer from 1–5 on Recency, Frequency, and Monetary using quintiles (top 20% = 5, bottom 20% = 1). For Recency, lower days = better score (5). For Frequency and Monetary, higher = better score (5)."

**Claude Returns:**
```
R_Score:  =6-CEILING(PERCENTRANK($B$2:$B$500, B2)*5, 1)
F_Score:  =CEILING(PERCENTRANK($C$2:$C$500, C2)*5, 1)
M_Score:  =CEILING(PERCENTRANK($D$2:$D$500, D2)*5, 1)
```

**Step 3 — Assign Segments**

> "Based on the RFM scores, assign each customer to a segment using these rules:
> - Champions: R≥4, F≥4, M≥4
> - Loyal Customers: F≥4 (regardless of R and M)
> - At Risk: R≤2, F≥3, M≥3 (used to buy a lot but haven't recently)
> - Lost: R=1, F≤2, M any
> - New Customers: R≥4, F=1
> - Everyone else: Regular
> Write the formula."

**Claude Returns a Nested IF:**
```
=IF(AND(E2>=4, F2>=4, G2>=4), "Champion",
  IF(F2>=4, "Loyal",
    IF(AND(E2<=2, F2>=3, G2>=3), "At Risk",
      IF(AND(E2=1, F2<=2), "Lost",
        IF(AND(E2>=4, F2=1), "New Customer",
          "Regular")))))
```

**Step 4 — Generate the Summary**

> "Create a summary table showing: segment name, number of customers, total revenue from that segment, percentage of total revenue, and average transaction value. Then write a 3-sentence interpretation of what the data means for our marketing strategy."

**Claude Returns** a summary table plus narrative like:
> "Your Champions segment represents 12% of customers but drives 38% of total revenue — protect these customers with exclusive offers and early access to sales. The At Risk segment includes 87 customers who previously spent heavily but haven't purchased in 60+ days — a targeted win-back campaign with personalized offers could recover significant revenue. Your New Customer segment is growing at 15% month-over-month, suggesting acquisition efforts are working, but conversion to Loyal status should be the next focus."

### What You Learn
- How to use Claude to build a complete analytical model step by step
- How to translate marketing frameworks (RFM) into Excel formulas
- How to ask Claude for both the numbers AND the interpretation

---

## 7. Example 5 — Sales Trend Analysis & Management Report <a name="example-5"></a>

### Scenario
You have 6 months of sales data and need to produce a monthly management report that identifies trends, flags concerns, and recommends actions.

### Your Excel Data (Sheet: "Monthly_Sales")

| A: Month | B: Revenue | C: Transactions | D: Avg Basket | E: Gross Margin % | F: Returns |
|---|---|---|---|---|---|
| Oct-25 | 2,100,000 | 3,200 | 656 | 36% | 45,000 |
| Nov-25 | 2,350,000 | 3,600 | 653 | 35% | 52,000 |
| Dec-25 | 2,800,000 | 4,100 | 683 | 33% | 78,000 |
| Jan-26 | 2,150,000 | 3,100 | 694 | 34% | 41,000 |
| Feb-26 | 2,280,000 | 3,350 | 681 | 35% | 48,000 |
| Mar-26 | 2,420,000 | 3,500 | 691 | 34% | 55,000 |

### Step-by-Step Instructions

**Step 1 — Trend Identification**

> "Analyze the monthly sales data in Sheet 'Monthly_Sales'. Identify: (1) the overall revenue trend, (2) whether gross margin is improving or declining, (3) the return rate trend as a percentage of revenue, and (4) any months that stand out as unusual. Present this as bullet points."

**Step 2 — Month-over-Month Calculations**

> "Add calculated columns for: MoM Revenue Growth %, MoM Transaction Growth %, and Return Rate (Returns / Revenue × 100). Write the formulas starting in row 3 (since row 2 has no prior month)."

**Claude Returns:**
```
MoM Revenue Growth:     =((B3-B2)/B2)*100
MoM Transaction Growth: =((C3-C2)/C2)*100
Return Rate:            =(F2/B2)*100
```

**Step 3 — Generate the Management Report**

> "Write a management summary report for March 2026. Include: a headline performance statement, 3 key insights from the trend data, 2 areas of concern, and 2 recommended actions. Write it in a professional tone suitable for a retail CEO. Keep it under 300 words."

**Claude Returns** a polished report like:

> **March 2026 Retail Performance Summary**
>
> Revenue reached THB 2.42M in March, reflecting a 6.1% increase over February and a 15.2% increase compared to the same period trend. Transaction count grew to 3,500, with average basket value holding steady at THB 691.
>
> **Key Insights:**
> 1. Revenue has recovered to near Q4 peak levels without the seasonal holiday boost, suggesting genuine organic growth
> 2. Average basket value has increased from THB 656 in October to THB 691 in March (+5.3%), indicating successful upselling
> 3. Post-December transaction counts have stabilized in the 3,100–3,500 range, showing consistent foot traffic
>
> **Areas of Concern:**
> 1. Gross margin has compressed from 36% to 34% over 6 months — revenue growth is being partially offset by margin erosion
> 2. Returns reached THB 55K (2.3% of revenue), the second-highest level outside December — warrants investigation by category
>
> **Recommended Actions:**
> 1. Conduct a category-level margin analysis to identify where margin is leaking and whether promotional pricing is responsible
> 2. Initiate a returns analysis by product category to determine if specific products are driving the increase

### What You Learn
- How to have Claude perform multi-dimensional trend analysis
- How to generate executive-ready narrative reports from raw numbers
- How to combine quantitative formulas with qualitative interpretation

---

## 8. Example 6 — Multi-Store Consolidation Dashboard <a name="example-6"></a>

### Scenario
Your retail company operates 4 stores. Each store submits weekly sales data in its own sheet within the same workbook. You need to consolidate them into a master view and build a comparison dashboard.

### Your Excel Data

Each store sheet (`Store_A`, `Store_B`, `Store_C`, `Store_D`) has identical columns:

| Date | SKU | Product | Category | Qty | Revenue |
|---|---|---|---|---|---|

### Step-by-Step Instructions

**Step 1 — Consolidation Macro**

> "I have 4 sheets named Store_A, Store_B, Store_C, Store_D, each with the same column structure: Date, SKU, Product, Category, Qty, Revenue. Write a VBA macro that: (1) creates a new sheet called 'Master', (2) copies all data from all 4 sheets into Master, (3) adds a column called 'Store' that identifies which store each row came from, and (4) removes any duplicate headers."

**Step 2 — Store Comparison Pivot**

> "Now that I have the Master sheet, what pivot table structure would best compare performance across stores? I want to see: total revenue by store, revenue by category by store, and average daily revenue per store."

Claude recommends a pivot layout:
- **Rows:** Store, Category
- **Columns:** (none, or Month for time comparison)
- **Values:** SUM of Revenue, COUNT of transactions, AVERAGE of daily revenue

**Step 3 — Variance Analysis**

> "Add a column to the pivot output that calculates each store's revenue as a percentage of total company revenue, and flag any store that contributes less than 20% (since with 4 stores, equal share would be 25%)."

**Step 4 — Dashboard Charts (Agent Mode)**

> "Using Agent Mode, create a dashboard sheet with: (1) a bar chart comparing total revenue by store, (2) a stacked bar chart showing revenue by category for each store, and (3) a summary table at the top with key metrics. Format it professionally with a header row."

### What You Learn
- How to consolidate multi-sheet workbooks with macros
- How to design pivot table structures through conversation
- How to build visual dashboards using Agent Mode

---

## 9. Example 7 — Demand Forecasting for Seasonal Events <a name="example-7"></a>

### Scenario
Your store needs to prepare stock orders for an upcoming holiday season. You have 2 years of historical sales data and want Claude to help identify seasonal patterns and recommend order quantities.

### Step-by-Step Instructions

**Step 1 — Pattern Identification**

> "I have 2 years of daily sales data in Sheet 'Sales_History'. Identify seasonal demand patterns: which weeks of the year have the highest sales? Are there consistent spikes around specific holidays or events? Show the top 10 peak weeks with their average sales compared to the annual average."

**Step 2 — SKU-Level Spike Analysis**

> "For the upcoming holiday period (April 10–16, Songkran), identify which SKUs showed the largest demand increase during last year's Songkran week compared to the 4 weeks before it. Rank by spike magnitude."

**Step 3 — Order Quantity Calculation**

> "For the top 20 SKUs by Songkran demand spike, calculate recommended order quantities using: Recommended Order = (Expected Daily Demand during Songkran × Number of Days × Safety Factor of 1.3) - Current Stock. Show this in a table format I can send to procurement."

**Step 4 — Scenario Testing**

> "What if our main supplier has a 3-day delay in delivery this year? Recalculate the order quantities with an additional 3-day buffer and show me which SKUs would be at risk of stockout under the delayed scenario."

### What You Learn
- How to extract seasonal intelligence from historical data
- How to convert pattern analysis into actionable purchase orders
- How to use Claude for "what-if" scenario planning

---

## 10. Example 8 — Product Performance Ranking <a name="example-8"></a>

### Scenario
Management allocates shelf space based on revenue alone, but you suspect that a weighted score considering margin, turnover, and revenue would give better results.

### Step-by-Step Instructions

**Step 1 — Multi-Factor Score**

> "This product table has columns for Revenue, Cost, Gross Margin %, Units Sold, and Days in Stock. Create a composite performance score that weights: Gross Margin % at 35%, Revenue at 35%, Inventory Turnover (Units Sold / Days in Stock) at 20%, and Sell-Through Rate at 10%. Normalize each factor to a 0–100 scale before weighting."

**Claude Returns:**
```
Normalized Margin:     =(E2-MIN($E$2:$E$100))/(MAX($E$2:$E$100)-MIN($E$2:$E$100))*100
Normalized Revenue:    =(B2-MIN($B$2:$B$100))/(MAX($B$2:$B$100)-MIN($B$2:$B$100))*100
Inventory Turnover:    =D2/F2
Normalized Turnover:   =(G2-MIN($G$2:$G$100))/(MAX($G$2:$G$100)-MIN($G$2:$G$100))*100
Composite Score:       =H2*0.35 + I2*0.35 + J2*0.2 + K2*0.1
```

**Step 2 — Compare Rankings**

> "Show me a comparison table: the top 15 products by Revenue-only ranking vs. the top 15 by Composite Score. Highlight products that appear in one list but not the other — these are the hidden gems or overvalued items."

**Step 3 — Shelf Space Recommendation**

> "Based on the Composite Score ranking, write a brief recommendation for the merchandising team about which products deserve more shelf space and which should be reduced. Include the data to support each recommendation."

### What You Learn
- How to build multi-factor scoring models in Excel via Claude
- How to challenge single-metric decisions with richer analysis
- How to get Claude to translate data into business recommendations

---

## 11. Example 9 — Supplier Performance Tracker <a name="example-9"></a>

### Scenario
You track supplier deliveries and want to evaluate each supplier on timeliness, quality, and cost competitiveness.

### Your Excel Data (Sheet: "Deliveries")

| A: Supplier | B: PO_Number | C: Order Date | D: Expected Date | E: Actual Date | F: Qty Ordered | G: Qty Received | H: Defects | I: Unit Cost |
|---|---|---|---|---|---|---|---|---|

### Step-by-Step Instructions

**Step 1 — Supplier Metrics**

> "Calculate these metrics for each supplier: (1) On-Time Delivery Rate = % of orders where Actual Date ≤ Expected Date, (2) Fill Rate = Qty Received / Qty Ordered averaged across all orders, (3) Defect Rate = Total Defects / Total Qty Received, (4) Average Days Late for late orders only. Build this as a summary table."

**Step 2 — Supplier Scorecard**

> "Create a supplier scorecard that scores each supplier from 1–5 on: Timeliness (based on on-time rate), Quality (based on defect rate), and Reliability (based on fill rate). Weight Timeliness 40%, Quality 35%, Reliability 25%. Rank suppliers by overall score."

**Step 3 — Risk Flags**

> "Flag any supplier where: on-time rate is below 80%, OR defect rate is above 5%, OR they are the sole supplier for any SKU that represents more than 5% of our revenue. These are high-risk suppliers that need attention."

**Step 4 — Quarterly Review Emails**

> "Draft a professional quarterly review email for our top supplier (Supplier ABC) using their actual performance data from the scorecard. Acknowledge what's going well, address any concerns with specific numbers, and request a corrective action plan if needed."

### What You Learn
- How to build multi-metric scorecards from transactional data
- How to identify supply chain risk using data-driven thresholds
- How to draft data-backed professional communications

---

## 12. Example 10 — Automated Retail KPI Dashboard <a name="example-10"></a>

### Scenario
You want to build a comprehensive KPI dashboard that updates when new data is added, showing all critical retail metrics in one view.

### Step-by-Step Instructions

**Step 1 — Define KPIs**

> "I want to build a retail KPI dashboard. Recommend the top 15 KPIs for a retail store, grouped into categories: Sales Performance, Inventory Health, Customer Metrics, and Operational Efficiency. For each KPI, tell me the formula and which data columns I need."

**Step 2 — Build the Metrics Sheet**

> "Create formulas for these KPIs using the data in my 'Transactions' and 'Inventory' sheets:
> - Revenue (total and MoM growth)
> - Gross Margin %
> - Average Transaction Value
> - Conversion Rate (if foot traffic data available)
> - Inventory Turnover Ratio
> - Days Sales of Inventory
> - Stockout Rate
> - Sell-Through Rate
> - Customer Retention Rate
> - Revenue per Square Foot"

**Step 3 — Conditional Formatting for Status**

> "Using Agent Mode, add conditional formatting to the KPI dashboard: green for KPIs meeting or exceeding target, yellow for within 10% of target, red for more than 10% below target. I'll set the targets in a reference column."

**Step 4 — Trend Sparklines**

> "Add sparkline charts next to each KPI showing the last 6 months of trend data. Use the SPARKLINE approach or Excel's built-in sparklines."

### What You Learn
- How to design a comprehensive KPI framework with Claude's guidance
- How to build self-updating dashboards with formulas and formatting
- How to create at-a-glance visual status indicators

---

## 13. Prompt Cheat Sheet for Retail Excel Work <a name="prompt-cheat-sheet"></a>

### Data Cleaning Prompts

```
"Review this data and list all quality issues you find."

"Standardize the [column name] column using these approved values: [list]."

"Find and flag duplicate rows based on [column name]."

"How many rows have missing values? Which columns are affected?"

"Clean up the date formats in Column B — standardize everything to YYYY-MM-DD."
```

### Formula Prompts

```
"Write an Excel formula to [describe the calculation]. The data is in [describe columns]."

"This formula returns [error type]: [paste formula]. What's wrong and how do I fix it?"

"Explain what this formula does in plain English: [paste formula]."

"I need a SUMIFS formula that totals revenue for [conditions]."

"Convert this nested IF into a cleaner approach using SWITCH or IFS."
```

### Analysis Prompts

```
"What are the top 5 trends you see in this data?"

"Compare [metric] across [dimension] and highlight significant differences."

"Which [products/stores/categories] are underperforming and why might that be?"

"Identify any outliers in this data that might indicate errors or unusual events."

"What patterns do you see in customer purchasing behavior from this transaction log?"
```

### Reporting Prompts

```
"Write a management summary for [audience] based on this data. Keep it under [word count]."

"Turn this data table into a narrative paragraph suitable for a board report."

"What 3 things should a retail manager pay attention to based on these numbers?"

"Draft an executive summary with: headline, 3 insights, 2 concerns, and 2 actions."
```

### Macro & Automation Prompts

```
"Write a VBA macro that [describe the task step by step]."

"Create a macro that runs daily to [describe the recurring task]."

"Write a macro that formats this report automatically: [describe formatting rules]."

"Can you make this macro also send the output via email using Outlook VBA?"
```

### Inventory & Supply Chain Prompts

```
"Calculate reorder point for [SKU] given: avg daily sales = X, lead time = Y days."

"Which SKUs have fewer than [N] days of stock remaining?"

"Identify slow-moving inventory (less than [N] units sold in the past [period])."

"What-if: if lead time increases by [N] days, which SKUs will stock out?"

"Draft an urgent reorder email to [supplier] for [products] due to low stock."
```

---

## 14. Tips, Limitations & Best Practices <a name="tips-and-best-practices"></a>

### Best Practices

| Practice | Why It Matters |
|---|---|
| **Be specific in your prompts** | "Analyze sales" is vague. "Compare Q4 revenue by category and identify which categories declined more than 10% YoY" is actionable. |
| **Provide context** | Tell Claude why you need the analysis — "for a board presentation" vs. "for my own understanding" produces different outputs |
| **Ask for explanations first** | Before applying a formula, ask Claude to explain it. This builds your own skill while catching any misunderstandings. |
| **Use progressive prompting** | Build complex analyses step by step rather than one massive prompt. Each step can be verified before moving on. |
| **Verify outputs** | Always spot-check Claude's formulas against a few rows you can calculate manually. Claude gets it right most of the time but is not infallible. |
| **Set a role** | Start your session with: "You are a senior retail data analyst. I'll be asking you to analyze Excel data from our retail stores." This focuses Claude's responses. |

### Known Limitations

| Limitation | Workaround |
|---|---|
| **Very large files (100K+ rows)** | Claude may struggle with massive datasets. Summarize or sample the data first, or use pivot tables to pre-aggregate. |
| **Circular references** | Claude cannot easily reason about circular formulas. Break the circularity before asking for help. |
| **Complex sensitivity tables** | Multi-variable data tables may confuse Claude. Simplify to one-variable-at-a-time analysis. |
| **Real-time data connections** | Claude works with the data currently in the workbook. It cannot refresh external data connections. |
| **Usage limits** | Claude in Excel shares your chat usage quota. Heavy Excel sessions consume your daily allowance. Plan important analysis for when you have sufficient quota remaining. |
| **Blind trust on dirty data** | Claude will analyze whatever you give it. If the data has errors, Claude's analysis inherits those errors. Clean first, analyze second. |

### The 80/20 Rule

Claude in Excel gets you approximately 80% of the way on most tasks. For the remaining 20%:
- Always verify formula logic on a subset of data
- Review narrative outputs for accuracy of specific numbers
- Test macros on a copy of your workbook before running on production data
- Cross-reference Claude's trend interpretations with your domain knowledge

---

## 15. Online Resources & Further Reading <a name="resources"></a>

### Official Resources

| Resource | URL |
|---|---|
| Claude for Excel — Official Page | https://claude.com/claude-for-excel |
| Getting Started Tutorial | https://claude.com/resources/tutorials/getting-started-with-claude-in-excel |
| Claude Help Center — Excel | https://support.claude.com/en/articles/12650343-claude-for-excel |
| Microsoft AppSource — Claude Add-in | https://marketplace.microsoft.com/en-us/product/office365/wa200009404 |
| Claude Prompting Best Practices | https://docs.claude.com/en/resources/prompt-library/spreadsheet-sorcerer |
| Excel Formula Expert Prompt Library | https://docs.claude.com/en/resources/prompt-library/excel-formula-expert |

### Guides & Tutorials

| Resource | URL |
|---|---|
| The Complete Guide: Claude in Excel (2026) | https://theramesh.substack.com/p/the-complete-guide-how-to-use-claude |
| Claude in Excel: Ultimate Starter Guide | https://o-mega.ai/articles/claude-in-excel-the-ultimate-starter-guide-2026 |
| The Easy Guide to Claude for Excel | https://www.f9finance.com/claude-for-excel/ |
| Claude for Excel: Lazy Genius Guide | https://sider.ai/blog/ai-tools/claude-for-excel-the-lazy-genius-way-to-analyze-spreadsheets |
| ICAEW: Claude Add-in Exploration | https://www.icaew.com/technical/technology/excel-community/excel-community-articles/2026/using-the-claude-add-in-for-excel-an-initial-exploration |
| Turn Claude into Your Senior Analyst | https://linas.substack.com/p/claudeinexcel |

### Retail-Specific AI Resources

| Resource | URL |
|---|---|
| RFM Customer Segmentation with Claude | https://www.rabbitmetrics.com/rfm-segmentation-with-claude-code/ |
| How to Use Claude for Spreadsheet Analysis | https://clickup.com/blog/how-to-use-claude-for-spreadsheet-analysis/ |
| AI-Driven Inventory Forecasting Tutorial | https://catalog.bensbites.com/tutorial/implement-ai-driven-inventory-forecasting |
| Claude Revenue Model Validation Tutorial | https://claude.com/resources/tutorials/how-to-use-claude-in-excel-for-accounting-revenue-model-validation |

### Microsoft Excel + AI

| Resource | URL |
|---|---|
| Agent Mode in Excel | https://support.microsoft.com/en-gb/topic/use-claude-with-agent-mode-in-excel-b2c3b3ec-154b-484b-84d0-914a80df395a |
| Building Agent Mode in Excel (Microsoft Blog) | https://techcommunity.microsoft.com/blog/excelblog/building-agent-mode-in-excel/4457320 |

---

## Quick Reference Card

### The 5-Step Workflow for Any Retail Excel Task with Claude

```
Step 1: DESCRIBE  → Tell Claude what data you have and what you need
Step 2: AUDIT     → Ask Claude to review the data for quality issues first
Step 3: BUILD     → Request formulas, macros, or analysis step by step
Step 4: VERIFY    → Spot-check Claude's output against known values
Step 5: REPORT    → Ask Claude to turn the analysis into a narrative summary
```

### Essential First Prompt (Use This to Start Any Session)

> "You are a senior retail data analyst helping me analyze Excel data from our retail operations. I have a workbook open with [describe your sheets and columns]. My goal today is to [describe your objective]. Let's work through this step by step."

---

*This guide was compiled using information from Anthropic's official documentation, Microsoft's Excel community resources, and leading AI productivity guides. All URLs were verified as of March 2026.*
