# Claude Cowork Excel Automation Curriculum
## Practical AI-Powered Spreadsheet Mastery for LDC Group

*Based on the 10-step framework from [Ryan & Matt Data Science](https://www.youtube.com/watch?v=rqte_LEu2Y8)*

---

## Curriculum Overview

| | Details |
|---|---|
| **Format** | Half-day workshop (4 hours) or self-paced online modules |
| **Audience** | LDC Group staff — operations, finance, inventory, sales teams |
| **Prerequisites** | Basic familiarity with Excel; no advanced skills required |
| **Tools Required** | Microsoft Excel + Claude Cowork (Pro, Team, or Enterprise) |
| **Outcome** | Participants can automate 10 core Excel workflows using plain English prompts |

---

## Learning Path — 10 Modules

```
Module 1 → Convert any file into Excel
Module 2 → Understand inherited spreadsheets
Module 3 → Find & fix data errors automatically
Module 4 → Clean messy data at scale
Module 5 → Write formulas in plain English
Module 6 → Summarize data across multiple sheets
Module 7 → Analyze data & generate business insights
Module 8 → Create charts & dashboards
Module 9 → Format spreadsheets professionally
Module 10 → Export to PDF & other formats
```

---

## Module 1 — Convert Any File to a Clean Excel Spreadsheet

**Duration:** 20 minutes
**Skill Level:** Beginner

### What You'll Learn
- Convert messy CSVs, text files, Word documents, and PDFs into structured Excel workbooks
- Handle files with inconsistent delimiters, swapped columns, and mixed formats
- Get clean headers, proper data types, and summary totals automatically

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **Jiffy** | Convert daily POS text exports from 33 branches into consolidated Excel files |
| **SkyCool** | Transform dealer order forms (PDF/Word) into structured purchase records |
| **Gourmet** | Convert supplier invoices from various formats into a standardized accounts payable sheet |
| **CR Service** | Import maintenance service logs from text-based field reports into Excel tracking sheets |

### Prompt Templates

```
"Take the [filename.csv] and turn it into a clean formatted Excel spreadsheet
 with proper headers and formatting."

"The [filename.txt] has a list of [data type]. Convert it into an Excel
 spreadsheet with columns for [column1], [column2], [column3], and [column4]."
```

### Class Exercise — Live Demo
**Scenario:** A Jiffy branch manager receives a raw text file containing the week's supplier delivery log with inconsistent separators (commas, tabs, pipes).

1. Open Claude Cowork desktop app and select the working folder
2. Prompt: *"This delivery log text file has supplier deliveries for the week. Convert it into an Excel spreadsheet with columns for Date, Supplier, Product, Quantity, and Unit Cost."*
3. Review the output — Claude identifies delimiter inconsistencies and handles them
4. Verify the total row and column data types

**Expected Time:** 2–3 minutes (vs. 30+ minutes manually)

---

## Module 2 — Understand Inherited Spreadsheets in Plain English

**Duration:** 20 minutes
**Skill Level:** Beginner

### What You'll Learn
- Get plain-English explanations of any spreadsheet's structure and logic
- Identify all formulas and understand what each one calculates
- Detect hardcoded values that should be formulas (risk flags)
- Map sheet-to-sheet data dependencies

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **LDC Group (HQ)** | New finance staff inheriting the quarterly consolidated P&L workbook |
| **Jiffy** | Store manager taking over a branch's inventory tracking sheet from a predecessor |
| **Zaap** | Understanding the bakery cost calculator built by the previous production manager |
| **Ants E-Commerce** | Reviewing the pricing model spreadsheet before platform launch |

### Prompt Templates

```
"I just inherited this spreadsheet from a coworker. Can you explain
 what it does in plain English?"

"Walk me through the formulas in this file. What is each one
 calculating and why?"

"Are there any hardcoded values that should be formulas? Flag anything risky."
```

### Class Exercise — Spreadsheet Detective
**Scenario:** A newly promoted Jiffy operations supervisor receives a 3-sheet workbook from their predecessor with no documentation.

1. Open the mystery spreadsheet in Excel with Claude sidebar active
2. Prompt: *"I just inherited this spreadsheet. Explain what each sheet does, list all formulas, and flag anything that looks hardcoded or risky."*
3. Claude explains: Sheet 1 = Sales data, Sheet 2 = Summary with formulas, Sheet 3 = Reference tables
4. Claude flags: Cell B5 on the Summary sheet is hardcoded instead of using a formula

**Key Takeaway:** You can understand any spreadsheet in under 5 minutes without reading a single formula yourself.

---

## Module 3 — Find & Fix Data Errors Automatically

**Duration:** 25 minutes
**Skill Level:** Beginner to Intermediate

### What You'll Learn
- Detect duplicate entries, invalid dates, negative values, and math errors
- Get specific error descriptions with row/cell references
- Let Claude fix all issues and save a clean version
- Maintain a change log for audit purposes

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **Jiffy** | Audit daily sales data for duplicate transaction IDs across 33 branches |
| **SkyCool** | Detect pricing errors in dealer quotation spreadsheets before sending to clients |
| **CR Service** | Validate maintenance billing records — flag negative quantities and mismatched totals |
| **Gourmet** | Check ingredient order sheets for impossible dates and quantity anomalies |

### Prompt Templates

```
"Review this spreadsheet and flag anything that looks like an error,
 anomaly, or red flag."

"Fix all the errors you found and save a cleaned version called
 [filename]_clean. Add a change log sheet."
```

### Class Exercise — Error Hunt Challenge
**Scenario:** A SkyCool billing spreadsheet has been prepared for month-end but contains hidden errors.

**The spreadsheet contains 6 intentional errors:**
1. Duplicate order ID (two different orders share the same ID)
2. Future date (2027 in a 2026 dataset)
3. Corrupted date (1900 — Excel zero date)
4. Negative quantity (-3 units)
5. Customer name is a number (4829301)
6. Total doesn't match quantity × unit price

**Exercise Steps:**
1. Ask Claude to audit the file
2. Compare Claude's findings to the known 6 errors
3. Ask Claude to fix and create a clean version
4. Review the change log sheet

**Discussion:** How many of these errors would you have caught manually? How long would it take?

---

## Module 4 — Clean Messy Data at Scale

**Duration:** 25 minutes
**Skill Level:** Intermediate

### What You'll Learn
- Standardize names, emails, phone numbers, dates, and categories
- Handle missing values with intelligent fill strategies (not just blank or zero)
- Detect and remove duplicate rows automatically
- Interactive cleaning — Claude asks YOU how to handle ambiguous cases

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **Jiffy** | Clean customer loyalty database — standardize names, phone formats, provinces |
| **Ants E-Commerce** | Prepare merchant database for platform launch — fix emails, remove duplicates |
| **LDC Group (HR)** | Standardize employee records across 33 branches — names, departments, dates |
| **Gourmet** | Clean supplier contact lists with mixed formats from different importers |

### Prompt Templates

```
"Clean up this spreadsheet. Standardize all the formatting, fix
 capitalization, and make it consistent throughout."

"How should I handle the [N] rows with missing [column] values?"
→ Claude asks for your preference before proceeding

"Standardize phone numbers to [format]. Standardize dates to [format].
 Standardize state/province to [2-letter abbreviation]."
```

### Class Exercise — The Messy Contact List
**Scenario:** LDC Group's HR department receives an employee export with problems in every column.

**Issues in the data:**
- Names: "JOHN doe", "john DOE", "John doe"
- Emails: mixed case, some with spaces
- Phone numbers: 5 different formats
- Province: "VTE", "Vientiane", "vientiane capital", "ວຽງຈັນ"
- Dates: 3 different formats
- 3 duplicate rows
- 8 blank industry/department fields

**Exercise:**
1. Prompt Claude with a simple cleanup request
2. Claude identifies all issues and asks follow-up questions
3. Answer Claude's questions (e.g., "Fill blanks as 'Unknown'" / "Phone format: XXX-XXX-XXXX")
4. Review the cleaned output — zero nulls, zero duplicates, all standardized

**Result:** 30+ rows cleaned in under 5 minutes vs. 1–2 hours manually.

---

## Module 5 — Write Excel Formulas with Plain English

**Duration:** 30 minutes
**Skill Level:** Intermediate

### What You'll Learn
- Describe any calculation in plain English and get the exact Excel formula
- Build profit margin, running totals, conditional flags, date calculations, and tiered structures
- Get built-in error handling (IFERROR) automatically
- Chain multiple formula requests in a single conversation

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **Jiffy** | Calculate profit margin per product, flag items below 15% margin |
| **SkyCool** | Build tiered commission formulas for 100+ dealers across Laos |
| **Zaap** | Calculate days since production for freshness tracking |
| **LDC Group (Finance)** | Running revenue totals across 33 branches with cumulative SUM |

### Prompt Templates

```
"Add a profit margin column that calculates the margin as a percentage
 of revenue."

"Create a running total column that shows the cumulative revenue as
 you go down the rows."

"Add a column that flags any sale where the discount is greater than
 20% with the word 'REVIEW'."

"Write a formula that calculates how many days ago each sale was made."

"Add a commission column. 8% for sales under 5K, 10% for 5 to 10K,
 and 12% for anything above."
```

### Class Exercise — Formula Builder Sprint
**Scenario:** Given a Jiffy sales table with columns: Sale_ID, Rep_Name, Date, Product, Category, Revenue, Cost, Discount

**Build 5 formulas in 10 minutes:**
1. Profit Margin % → `=(Revenue-Cost)/Revenue`
2. Running Revenue Total → `=SUM($F$2:F2)`
3. Discount Flag → `=IF(H2>0.2,"REVIEW","")`
4. Days Since Sale → `=TODAY()-DATEVALUE(C2)`
5. Tiered Commission → `=IF(F2<5000, F2*0.08, IF(F2<10000, F2*0.1, F2*0.12))`

**Key Insight:** Claude automatically adds IFERROR wrappers for safety — something most people skip.

---

## Module 6 — Summarize Data Across Multiple Sheets

**Duration:** 20 minutes
**Skill Level:** Intermediate

### What You'll Learn
- Pull data from multiple region/branch sheets into a single summary view
- Build auto-updating summary tables (not hardcoded ranges)
- Create month-by-month and region-by-region consolidated views

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **Jiffy** | Consolidate revenue from North, South, East, West region sheets into one summary |
| **SkyCool** | Merge dealer performance sheets from 100+ authorized dealers |
| **LDC Group** | Consolidate P&L across 6 subsidiaries (Jiffy, Zaap, SkyCool, CR, Gourmet, Ants) |

### Prompt Templates

```
"I have data on separate sheets for each region. Create a new summary
 sheet that pulls the total revenue from each region into one table."

"If I add a new row to any regional sheet, will the summary update
 automatically? If not, fix it."
```

### Class Exercise — Regional Consolidation
**Scenario:** Jiffy has 4 regional spreadsheets (North, South, East, West) with identical column structures.

1. Prompt Claude to create a summary sheet
2. Claude builds formulas pulling from each regional sheet
3. Ask Claude: *"If I add new rows, will this update?"*
4. Claude identifies hardcoded ranges and fixes them to dynamic ranges

---

## Module 7 — Analyze Data & Generate Business Insights

**Duration:** 30 minutes
**Skill Level:** Intermediate to Advanced

### What You'll Learn
- Ask Claude to identify trends, top performers, and patterns
- Get customer-level, product-level, and time-based analysis
- Generate executive summaries ready for Slack, email, or presentations
- Discover insights you didn't know to ask about

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **Jiffy** | Analyze which product categories drive the most revenue across branches |
| **Zaap** | Identify peak ordering days and top-selling menu items by location |
| **Gourmet** | Customer spending analysis — who are the top 10 B2B clients by spend? |
| **LDC Group** | Cross-subsidiary performance analysis for board reporting |

### Prompt Templates

```
"Summarize the key trends in this data set. What stands out to you?"

"Who are the top five customers by total spend?"

"Is there a pattern in which days of the week have the highest sales?"

"Write me a three sentence executive summary on this data I could
 paste into a Slack message."
```

### Class Exercise — Insight Discovery
**Scenario:** Given 6 months of Jiffy sales data across all branches.

**Ask Claude 4 progressively deeper questions:**
1. "What are the key trends?" → Revenue distribution, category dominance
2. "Top 5 customers?" → Reveals tier misalignment (top spenders in lowest tier)
3. "Day-of-week patterns?" → Friday/Saturday = 58% of sales
4. "Write me a 3-sentence executive summary for the CEO."

**Key Insight:** Claude found that 3 of 5 top spenders were in the lowest loyalty tier — a segmentation problem nobody was looking for.

---

## Module 8 — Create Charts & Dashboards

**Duration:** 25 minutes
**Skill Level:** Intermediate

### What You'll Learn
- Generate bar charts, line charts, and combination charts from prompts
- Apply conditional formatting and color scales to data columns
- Build a complete dashboard sheet with KPIs, charts, and color coding
- Create both in-Excel and HTML dashboards

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **LDC Group** | Monthly performance dashboard for the CEO across all subsidiaries |
| **Jiffy** | Branch comparison bar charts for the regional operations meeting |
| **SkyCool** | Revenue vs. expense trend line for quarterly dealer reviews |
| **Zaap** | Production output dashboard with conditional formatting on freshness |

### Prompt Templates

```
"Create a bar chart showing the total revenue by month."

"Add a line chart that shows both revenue and expenses on the same
 chart so I can see the trend."

"Apply conditional formatting to the profit column — green for
 positive, red for negative."

"Create a simple dashboard view on a new sheet that shows key
 metrics at a glance."
```

### Class Exercise — Dashboard Build
**Scenario:** Given LDC Group's monthly performance data (Revenue, Expenses, Profit, Leads, Conversions).

1. Create a revenue bar chart
2. Overlay revenue + expenses on a dual-axis line chart
3. Add conditional formatting to the profit column
4. Build a full dashboard sheet with KPIs at the top

**Time:** Under 10 minutes for a complete, professional dashboard.

---

## Module 9 — Format Spreadsheets Professionally

**Duration:** 15 minutes
**Skill Level:** Beginner

### What You'll Learn
- Transform raw data dumps into presentation-ready spreadsheets
- Apply professional headers, borders, column widths, and number formats
- Add title rows, totals, and status indicators
- Make any spreadsheet client-ready or board-ready

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **LDC Group** | Format the quarterly board report spreadsheet before the CEO presents |
| **SkyCool** | Make dealer quotation spreadsheets look professional for Daikin clients |
| **CR Service** | Format maintenance service reports for hotel and restaurant clients |
| **Gourmet** | Polish ingredient pricing sheets for supplier negotiations |

### Prompt Templates

```
"Make this spreadsheet look professional. Clean up formatting,
 add proper headers, and make it presentable."

"Format the header row with [color], add borders, auto-fit column
 widths, and apply currency format to columns [X] and [Y]."
```

### Class Exercise — Before & After
**Scenario:** A raw, unformatted LDC project budget spreadsheet.

1. Show the "ugly but accurate" version
2. Single prompt: *"Make this look professional and presentable."*
3. Claude adds: colored header, borders, number formatting, column widths, title row
4. Compare before/after — same data, dramatically different impression

---

## Module 10 — Export Excel to PDF & Other Formats

**Duration:** 15 minutes
**Skill Level:** Beginner to Intermediate

### What You'll Learn
- Transform completed Excel files into formatted PDF reports
- Include title pages, executive summaries, KPI boxes, and data tables
- Add confidentiality footers and branding elements
- Export to Word, email drafts, and other formats

### LDC Application
| Business Unit | Example Use Case |
|---|---|
| **LDC Group** | Convert quarterly performance spreadsheet to a board-ready PDF report |
| **SkyCool** | Generate PDF quotation reports from the pricing spreadsheet for Daikin clients |
| **Jiffy** | Export weekly branch performance as PDF for branch managers without Excel |
| **Gourmet** | Convert the monthly supplier order summary into a PDF for email distribution |

### Prompt Templates

```
"Turn the spreadsheet into a formatted PDF report with a title,
 executive summary, and the data table."

"Export this data as a Word document with a professional layout
 including a cover page."

"Generate an email-ready summary of this spreadsheet data that I
 can paste into Outlook."
```

### Class Exercise — PDF Report Generation
**Scenario:** LDC Group's Q4 department performance spreadsheet needs to become a PDF for the board.

1. Prompt: *"Turn this into a formatted PDF report with a title, executive summary, KPI boxes, and the data table."*
2. Claude generates: Title banner, KPI summary boxes, executive narrative, detailed data table, confidentiality footer
3. Review the PDF — ready to distribute in under 5 minutes

---

## Assessment & Certification

### Practical Assessment
Participants complete a capstone exercise that chains 3+ modules together:

| Step | Module Applied | Task |
|---|---|---|
| 1 | Module 1 | Import a raw CSV file into Excel |
| 2 | Module 3 | Find and fix 3+ data errors |
| 3 | Module 4 | Clean and standardize the data |
| 4 | Module 5 | Add 2 calculated columns using formulas |
| 5 | Module 7 | Generate 3 business insights |
| 6 | Module 8 | Build a simple dashboard |
| 7 | Module 10 | Export as a PDF report |

**Passing Criteria:** Complete all 7 steps within 30 minutes using Claude Cowork prompts.

### Certificate of Completion
Participants who complete the assessment receive a **Claude Cowork Excel Automation Certificate** recognizing proficiency in AI-assisted spreadsheet workflows.

---

## Quick Reference — Top 20 Prompts

### File Conversion (Module 1)
1. "Take this [file] and turn it into a clean formatted Excel spreadsheet."
2. "Convert this text file into Excel with columns for [list columns]."

### Understanding (Module 2)
3. "Explain what this spreadsheet does in plain English."
4. "Walk me through every formula. Flag anything hardcoded."

### Error Detection (Module 3)
5. "Review this file and flag all errors, anomalies, and red flags."
6. "Fix all errors and save a clean version with a change log."

### Data Cleaning (Module 4)
7. "Clean this spreadsheet. Standardize all formatting and fix capitalization."
8. "Remove duplicates and fill missing values as 'Unknown'."

### Formula Writing (Module 5)
9. "Add a profit margin column as a percentage of revenue."
10. "Create a running total. Add a tiered commission column."
11. "Flag any row where [condition] with the word 'REVIEW'."

### Multi-Sheet (Module 6)
12. "Create a summary sheet pulling totals from each regional sheet."
13. "Make sure the summary auto-updates when I add new rows."

### Analysis (Module 7)
14. "Summarize the key trends. What stands out?"
15. "Who are the top 5 [customers/products/branches] by [metric]?"
16. "Write a 3-sentence executive summary for this data."

### Charts (Module 8)
17. "Create a bar chart showing [metric] by [dimension]."
18. "Build a dashboard sheet with KPIs and charts."

### Formatting (Module 9)
19. "Make this spreadsheet look professional and presentable."

### Export (Module 10)
20. "Turn this into a formatted PDF report with title and executive summary."

---

## Course Materials & Resources

### Video Reference
- **Full Walkthrough:** [Claude Cowork Can NOW Automate Your Excel!](https://www.youtube.com/watch?v=rqte_LEu2Y8) — Ryan & Matt Data Science (31 min)

### Related LDC Materials
- [Claude Cowork Workshop Curriculum — Two-Day Retail](Claude%20Cowork%20Workshop%20Curriculum%20-%20Two%20Day%20Retail.md)
- [Claude Cowork with Excel — Retail Usage Examples & Instructions](Claude%20Cowork%20with%20Excel%20-%20Retail%20Usage%20Examples%20%26%20Instructions.md)
- [LDC Import-Export Group — Company Report](LDC%20Import-Export%20Group_%20Comprehensive%20Company%20Report.md)

### Online Resources
| Resource | URL |
|---|---|
| Claude for Excel — Official | https://claude.com/claude-for-excel |
| Getting Started Tutorial | https://claude.com/resources/tutorials/getting-started-with-claude-in-excel |
| Ryan & Matt Free Community | https://www.skool.com/data-and-ai |

---

*Curriculum Version 1.0 — April 2026*
*Developed for LDC Import-Export Group — Claude Cowork Excel Automation Training Program*
