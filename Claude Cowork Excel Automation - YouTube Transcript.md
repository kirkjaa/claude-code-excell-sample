# Claude Cowork Can NOW Automate Your Excel! (Full Walkthrough)

**Source:** [YouTube — Ryan & Matt Data Science](https://www.youtube.com/watch?v=rqte_LEu2Y8)
**Channel:** Ryan & Matt Data Science
**Duration:** 31:08
**Published:** 2026-03-19
**Category:** Science & Technology

---

## Video Description

The way most people use Excel is about to look very outdated. In this video, I'll show you 10 different ways to use Claude Cowork to automate your spreadsheets — no syntax, no Stack Overflow, no 45-minute tutorials.

**Topics Covered:**
- Converting messy CSVs, text files & PDFs into clean Excel sheets
- Understanding inherited spreadsheets you've never seen before
- Automatically finding and fixing data errors
- Cleaning messy data (names, emails, phone numbers, dates)
- Writing complex formulas in plain English
- Summarizing data across multiple sheets
- Analyzing trends and generating executive summaries
- Creating bar charts, line charts & dashboards
- Formatting spreadsheets to look professional
- Exporting Excel files to PDF reports

---

## Chapters

| Timestamp | Topic |
|---|---|
| 00:00 | Intro — Why Excel is About to Look Outdated |
| 00:30 | Convert Files to Excel (CSV, Text, PDFs & More) |
| 04:30 | Understand Inherited Spreadsheets in Plain English |
| 08:10 | Find & Fix Errors Automatically |
| 12:42 | Clean Messy Data (Names, Emails, Phones, Dates) |
| 15:32 | Write Excel Formulas with Plain English |
| 19:41 | Summarize Data Across Multiple Sheets |
| 21:02 | Analyze Data & Generate Business Insights |
| 24:01 | Create Charts & Dashboards |
| 26:51 | Format Spreadsheets Professionally |
| 28:31 | Export Excel to PDF & Other Formats |
| 30:41 | Outro |

---

## Full Transcript

### Intro — Why Excel is About to Look Outdated (00:00)

The way most people use Excel is about to look very outdated. Right now, you can describe exactly what you want in plain English. Clean this data. Write me a formula. Turn this into a chart. And Claude Co-work just does it. No syntax, no Stack Overflow, no 45-minute YouTube tutorial. The people who figure this out early are going to have a serious edge in the workforce. And this video is going to show you how to become one of those people. Let's jump into it.

### 1. Convert Files to Excel — CSV, Text, PDFs & More (00:30)

What if your data isn't in a spreadsheet to begin with? Maybe it's in a PDF, a CSV dump from some other tool, a text file, a word document, whatever format it is in, Claude can take that and turn it into a clean structured Excel file. No copy pasting needed, no formatting by hand.

So, we're going to go through two examples. The first one is going to take a look at a spreadsheet that looks like this. Invoice data export. This is just a CSV and terrible formatting. The second one is going to be a text document and you can take a look at this contact list across the board. Not really helpful. It would take a lot of time to just copy and paste this over into a spreadsheet of some sort.

So, we are going to work on both of those. And we're going to do it one at a time. So, make sure, as I mentioned, we're using Cloud Co-work, you have the desktop app, you're on the co-work tab, and let's get started.

So, the first one I'm going to say over here, and I'll just copy over my prompts. I already wrote them before this video, but we're going to say, "Take the invoice sample CSV and turn it into a clean formatted Excel spreadsheet with proper headers and formatting." So, that's the exact CSV name. You'll have all the resources from this video that you can follow along as well. And I'm just going to use Sonnet 4.6 across the board as well. I've already chosen my specific folder on the computer. I would recommend that you do the same exact thing. So, just go over here and choose a folder on your computer where this data is stored at so that way Claude Co knows. And I'm going to click let's go.

And every time we're going to run through these as well in this video, I'm going to cut from when I run that prompt to when we get the final solution. So that way you guys aren't waiting around a few minutes. Often I find that some of these prompts can take anywhere from 1 to 5 to 10 minutes depending on complexity. But I don't want to waste your guys' time. So I'll fast forward to when each of these are ready and we'll narrate on top of that.

Okay. And then it says zero errors formula verified. Here is your file. So we have our Excel file over here. And let's take a look at it. So you'll see that we have a nice clean header. It says generated 2024-3-15. Invoice, then the client, the date, the amount, the status, whether it's paid or pending or adjustment, and then extra notes. Again, going back into this over here, it's a night and day difference. And obviously, I could load up this file. The cool things with cloud co-work, we have this built in directly over here. So, we can actually see what's happening with the spreadsheet every time. And yeah, this is awesome. And we also have a total column which sums up all of these amounts.

And I'm going to give it a second one to look at now. And it's going to be this one in our notes. So this team contact list internal use only.

So here is the prompt which I will state. Let me just copy that over. So what we're saying is the team contact text file has a list of contacts. Convert it into an Excel spreadsheet with columns for names, email, phone, and department.

Just going back over here. See, name, email, phone. So, let's go and clean that one up and turn that into an Excel file. All right. And you can see it says good. The file has 10 contacts, five different delimiters, two rows have the email, department, and swap positions. I'll handle all of that.

So, again, very messy data. I mean this is terrible. So let's take a look at our Excel file. And we have our name over here, our email, our phone number as well as the department for each of these individuals. Team contact internal use only 10 contacts significantly better. So when you have other file formats, whether it's a messy CSV or a text file, a word document, whatever the case may be, and you need to convert that into a spreadsheet, co-work can do that within minutes, saving you quite a lot of time, and it gives it to you in pretty nice formatting.

### 2. Understand Inherited Spreadsheets in Plain English (04:30)

Let's take a look at our next example. Ever inherit a spreadsheet from a co-worker and have absolutely no idea what you're looking at? Formulas referencing other sheets, columns with no labels, logic that makes no sense only to the person who built it. In this section, we're going to hand Claude a file we've never seen before and ask it just to explain it.

Okay, so our folder is going to house this spreadsheet. We're going to walk through a few different prompts to try out in this section. The first one I'm going to write over here and throw it in. "I just inherited this spreadsheet from a coworker. Can you explain what it does in plain English?" And we'll walk through each of these.

Okay, so what we have is sheet number one, which is our sales tracker. This is the main data sheet for each sales rep records their name and region, their quarterly sales, total column sums up all four quarters, a commission rate either 10 or 12%, commissions earned above target, which is going to be a yes or a no. And then sheet two, summary, total revenue, the top rep, currently hardcoded as this.

This isn't a formula, so it won't automatically update if data changes. Worth flagging whoever maintains it. That's pretty cool. Average commission. The average commission earned across all reps and count above target how many reps hit 50,000 threshold.

One thing to note, the top rep cell and summary sheet is hardcoded, not a formula. The sales number is changed. The cell won't automatically update to reflect whoever is actually at the top. That's something your coworker update manually may want to replace it with proper index match formula.

Okay, so let's ask if there's any formulas now. It already told us a risky section which I was going to ask for kind of our next question, but let's walk through these formulas. So, walk me through the formulas in this file. What is each one calculating and why?

And here is all the formulas. So, you can see column G total adds up all four quarterly sales for each rep, gets their full revenue. Column I, commission earned, multiplies the rep by their commission rate. So have erupted 60k in sales, 10% rate gives you $6,000. Column J above target. Then we have our formulas for sheet two, which is our total revenue. Our average commission, same idea, pulls all 20 commissions earned. And then B5, which is count above target, the one non-formula worth flagging again. So it does a very good job at telling us that there are specific errors in that spreadsheet.

Again, I haven't even taken a look at the spreadsheet as of yet, and I'm going to show it to you right now on the screen. And here you can see the spreadsheet that we were analyzing for this particular video. And we have a rep name, region, the sales, the total commission, as well as the above target.

And you can see all these formulas that are built in. This is hardcoded, but this is another formula. And then this is a formula as well. And then we jump in over here. You can see that this takes some information in the sales tracker. This is hardcoded in and these are not. So, fantastic job at flagging this. This was obviously an error that someone made and explaining all the formulas and explaining really what was happening.

### 3. Find & Fix Errors Automatically (08:10)

Before you trust any data, you need to know if it's actually clean. And errors in spreadsheets aren't always going to be super obvious. They can hide in plain sight. A date that's in the future, an order that doesn't match the line items, a duplicate entry that slipped through. In this section, we're going to hand Claude a file that has multiple issues, and we're going to see if it could find those automatically.

So this is the spreadsheet we're going to be taking a look at with our flagged data. We have our different order IDs. We have a customer name, the order date, then a product quantity, unit price, as well as the total. You can see just spot checking like this is a 1900 date. That makes no sense. Why do we have that? We have a 2027 date as well and we're looking at 2024 data. There's other errors too if you notice over here, but I really want to see what Claude can find. We're going to keep a very relatively easy prompt. We're going to say "review the spreadsheet and flag anything that looks like an error, anomaly, or red flag." So, we're going to click let's go.

All right. And we have our results. So, found six errors and red flags.

1. **Duplicate order ID.** Two completely different orders share the same ID. Going back over here, order two and order two, you can see that these are different orders. However, the order ID is the same. So that was great.
2. **Future date — 2027.** Over 3 years in the future. We're in 2026, but based off the other data in here, every other order is for March 2024. This is almost certainly a typo. Probably meant 2024.
3. **Corrupt invalid date.** Date of 1900. Excel zero date, which typically means an empty or null date cell was misread as a number. This order has no real date.
4. **Negative quantity.** Order 10, row 11. Quantity negative -3.
5. **Customer name is all numbers.** Customer name is 4829301.
6. **Total doesn't match line item summary.**

Two data issues, one duplicate ID, one bad quantity, one corrupted customer name, and one math error. And take a look at this. "Want me to fix all of these and save a cleaned version of the file?" So, not only does Claude tell us, hey, these are the errors that you have, but it's also going to say, hey, how about I go fix them?

So well you can go and say "yes fix the file and make a second version called clean." So say file name like that. I always just recommend if you're going to be manipulating a file just make a duplicate of it.

We're going to send that message and it'll give us our new file. All right. And then it says all six fixes applied. View clean data. And we can go over here. This customer name, I love how it highlights "known — reviewer required." Then we have the order dates. The future date in 2027 is 2024. The corrupted date over here. Negative value is changed to three. Customer name — review required. And then order 18 has been updated. 9 × 8,765 — that is correct because 9 × 80 is 720 + 45.

### 4. Clean Messy Data — Names, Emails, Phones, Dates (12:42)

Dirty data can be frustrating. Inconsistent formats, random blanks, duplicate entries, state names spelled in multiple different ways or abbreviation. It all adds up fast. And this is usually one of the most tedious parts of any sort of data project. In this section, I'm going to show you how quickly Claude can clean up a file that normally takes 30 minutes up to hours of manual work.

So, here is our messy data we're going to be dealing with. And there's a lot of different issues. I mean, oh my god, this first name is terrible. Same with last name. Let's look at the emails. All caps, lowercase. Phone numbers are in different formats. Company looks okay. Industry, we have some that are blank. State, I mean, look at New York. NY, New York, New York, like that. California. Then we have our lead source, which again looks okay out of the gate. And then we have date added, which we have quite a few different date formats. Man, I'd be really upset if I got this file, but that's okay. We can fix this now with Claude.

So, all I'm going to say is something relatively easy. "Clean up this spreadsheet. Standardize all the formatting, fix capitalization, and make it consistent throughout." And I'm going to click let's go.

And we have our results. So, here's what it found. Problems: capitalization, emails, phone numbers, state, dates, missing industries, duplicate rows. And then you can see it actually prompted us. "How should I handle eight rows with a missing industry value?" And we can either fill these as unknown or leave it blank. I'm going to say unknown. "What phone format should I standardize it to?" And we're going to do month, month, day, day. We'll be back once the file is fixed.

But you can see we already have our plan: names, email, phones, states, dates, industry, as well as duplicates. So it found three duplicate rows. I didn't even ask it to find duplicates. I knew there was duplicates in over here. And all I did is say clean up the spreadsheet. It already knows to remove that for us.

Okay. And it says all checks pass, zero null, zero duplicates, 27 clean rows. Here's the file. Let's take a look at our brand new file.

Sanity check. This looks amazing. We have a colored header over here. We have our names that are fixed, our emails, the phone numbers that are all standardized. And then we have our company, industry with our unknowns over there. State has two letters. And then we also have our lead source and date added, which is significantly cleaner.

### 5. Write Excel Formulas with Plain English (15:32)

Remember, one of the biggest pains of learning how to use Excel is formulas. And one of the great things about large language models and just AI in general is you no longer need to memorize formula syntax. In this section, we're going to describe exactly what we want in plain English and then let Claude Co-work write the exact formulas. And we're going to cover things from a simple profit margin column all the way to tiered commission structures with multiple conditions. If you can explain a formula, Claude can write it.

This is the spreadsheet we're going to be working with. Very similar to other stuff. We have a sale ID, a rep name, sale date, product, category, revenue, cost, and then also discount. I have a few different prompts which we're going to be walking through.

**Prompt 1:** "Add a profit margin column that calculates the margin as a percentage of revenue."

Okay, it says all done. Zero errors across all 25 formulas. Here was added.

**Prompt 2:** "Create a running total column that shows the cumulative revenue as you go down the rows."

Okay, zero errors across 50 formulas. The running total uses SUM start and moves out.

**Prompt 3:** "Add a column that flags any sale where the discount is greater than 20% with the word review."

All right, that one has been added as well.

**Prompt 4:** "Write a formula that calculates how many days ago each sale was made."

All right. And one more:

**Prompt 5:** "Add a commission column. 8% for sales under 5K, 10% for 5 to 10K, and then 12% for anything else."

All right, it is now done. And you'll notice that we have our profit margin. We have our formula over here. F2 minus G2 divided by there. We have our running total discount flag. We're looking if H2, which is over here, is less than 20. We have days ago that's populated which takes today's date minus the date value and then we have that commission. You can see 5,000 — 8%, 10,000 — 10%, and then we have that 12% if it's larger. So this was pretty awesome. They were able to throw this together.

I do like how we put an error handling also, which the IFERROR. A lot of people would skip that, myself included. I probably wouldn't have put that IFERROR over here, but Claude takes care of us pretty nicely.

### 6. Summarize Data Across Multiple Sheets (19:41)

Once your workbook grows beyond one tab, keeping everything connected can get complicated really fast. In this section, we're going to cover a workbook that has data split across multiple sheets, one per region, and we need Claude to pull it all together into a clean summary view without losing any of the underlying detail.

So, this is our spreadsheet this round. We have north, south, east, and west. And our first prompt is going to be:

"I have data on separate sheets for each region. Create a new summary sheet that pulls the total revenue from each region into one table."

Okay. So, we have our updated information over here. And you can see on this summary, we have the region, a revenue by region per month as well. And I want to add one more thing:

"If I add a new row to any regional sheet, will the summary update automatically? If not, fix it."

So, it does. And it confirmed all ranges are hardcoded and it was able to fix this spreadsheet. So, if we were adding in a new row, it should automatically populate the data within our summary section.

### 7. Analyze Data & Generate Business Insights (21:02)

In this section, we're going to ask Claude to dig into a real data set and pull out some insights. No pivot tables needed, no complicated formulas, just plain English questions. And at the very end, we'll ask it to write a summary that we can send to our manager.

Here is the data set we're taking a look at. Again, very similar — order ID, customer, order date, day of week, product, category, units, unit price, total revenue, as well as customer tier.

**Prompt 1:** "Summarize the key trends in this data set. What stands out to you?"

Key trends it found: Electronics dominates revenue, accounts for 60% total revenue. June was a massive spike. Gold tier customers are the engine, drive the most volume. Keyboard is the number one product. High revenue variance — orders range from $20 to 2,000 with a mean of 305 and a standard deviation of 376.

**Prompt 2:** "Who are the top five customers by total spend?"

Then we have the top five customers by total spend, the rank, customer, total spend, orders, average orders, as well as their specific tiers. John Smith is in a league of his own, spending nearly 600 more than number two. Three of the five spenders are in Bronze tier, which raises a question about how tier is assigned.

**Prompt 3:** "Is there a pattern in which days of the week have the highest sales?"

Friday, Saturday is when the store lives. Wednesday is a dead zone. Sunday underperforms despite the highest order count.

**Prompt 4:** "Write me a three sentence executive summary on this data. I could paste into a Slack message."

And here's our summary: "E-commerce snapshot January through June 2024. Cross 50 orders we generated X in revenue — electronics and gold tier customers. Friday Saturday alone, 58% of sales. Top customer contributed 3,650 by himself. Three of five spenders are bronze tier suggesting our tier classification may not be aligned with actual spend."

### 8. Create Charts & Dashboards (24:01)

Numbers in a spreadsheet are hard to read at a glance. A chart or some sort of smart color coding can change that instantly. In this section, we're going to take a look at a table of raw monthly performance data and then turn it into something you can actually want to look at like bar charts, color-coded columns, or a simple dashboard. All from plain English prompts.

Here is our data. Relatively straightforward. Revenue, expense, profit, leads, conversions, and then also conversion rate.

**Prompt 1:** "Create a bar chart showing the total revenue by month."

All right. And it says generated bar chart. We can view our chart over here.

**Prompt 2:** "Add a line chart that shows both revenue and expenses on the same chart so I can see the trend."

And it says view your chart. Revenue solid blue line and expenses dashed, plotted together with profit gap shaded in between. Again, a very pretty cool chart.

**Prompt 3:** "Apply conditional formatting to the profit column." And also "Add a color scale to the conversion rate column."

Okay, both updates applied to the spreadsheet.

**Prompt 4:** "Create a simple dashboard view on a new sheet that shows key metrics at a glance."

And it says view your spreadsheet over here. Performance dashboard — full year, month, revenue, profit and then our color coded profit as well as that conversion rate. Now we could also build out an HTML dashboard. I just asked for it to be built in our spreadsheet over here, but it's relatively easy.

### 9. Format Spreadsheets Professionally (26:51)

A spreadsheet that works isn't always a spreadsheet that looks good. Raw data dumps have no formatting, inconsistent column widths, numbers without currency symbols. It's functional, but when you're sending it to other people, it's really not presentable.

In this section, we're going to take an ugly but accurate file and then turn it into something you'd actually want to send to a client or a manager or someone that's an executive.

So, this is our budget spreadsheet. We have project name, department, budget, actual spend, variance, and then also our status.

**Prompt:** "Make this spreadsheet look professional, clean up formatting and proper headers, make it presentable."

All right, so looks like it is now done. And take a look at our project budget report. We have name, department, allocated, budget, spend, variance as well as on track. And obviously I think it looks pretty good.

### 10. Export Excel to PDF & Other Formats (28:31)

Your spreadsheet is done. The data is clean. The analysis is solid. And the file looks great, but now you need to actually share it. Whether it's a client, your manager, or your team. In this section, I'm going to show you how we can take a finished Excel file and then transform it into something else.

We're going to take a look at turning this into a PDF report, but you can also change this into a Word document, a written summary, an email. It does not matter. Claude doesn't just work inside of Excel files. It allows you to transform them into other formats.

This is the spreadsheet we're going to be working on for this last section. Department, headcount, quarter 4, budget, revenue, goal met, as well as notes.

**Prompt:** "Turn the spreadsheet into a formatted PDF report with a title, executive summary, and the data table."

Now, you could be super fancy with this. You could also specify colors, formatting, a lot of other additional stuff.

All right, that took about five minutes, but you can see it read the spreadsheet — has a title banner, KPI, executive summary, department detail, and a confidentiality footer. Here's our results. Quarter 4 department performance report, fiscal year 2025, fourth quarter prepared March 17th, 2026. Headcount, actual spend, total revenue, departments on track. We have some text over here as executive summary. We also have this table which looks relatively clean.

### Outro (30:41)

So that's a wrap on 10 different approaches on how you can use Claude Co-work to help automate Excel and spreadsheets. There are probably dozens of other opportunities out there as well. And if I missed one, make sure to leave a comment down below to help out other people. And if you're interested in learning more about Co-work AI, make sure to subscribe to the channel because we're uploading multiple videos every single week. We also have a free school group down below with all the resources in the video. So, make sure to check that out and I'll see you guys in another video.

---

## Links from the Video

- **Business AI Consulting:** https://ryanandmattdatascience.com/ai-consultant/
- **Free Community (Skool):** https://www.skool.com/data-and-ai
- **Website & Blog:** https://ryanandmattdatascience.com/
- **Ryan's LinkedIn:** https://www.linkedin.com/in/ryan-p-nolan/
- **Matt's LinkedIn:** https://www.linkedin.com/in/matt-payne-ceo/
- **Twitter/X:** https://x.com/RyanMattDS

---

*Transcript generated April 2026*
