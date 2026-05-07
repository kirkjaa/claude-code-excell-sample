# Consulting Proposal — Two-Day Discovery & Architecture Sprint

**Pre-Workshop Engagement: POS Data Analysis Scoping & Secure 10-User AI Deployment Plan**

---

| | |
|---|---|
| **Prepared for** | LDC Import-Export Group — Vientiane, Lao PDR |
| **Prepared by** | Edknovate (Kirk Pathumanun) |
| **Date** | 8 May 2026 |
| **Engagement type** | Fixed-fee consulting — 2 working days |
| **Fee** | **THB 50,000** (all-inclusive) |
| **Status** | Proposal — for LDC review |

---

## 1. Executive Summary

This is a proposal for a **two-day fixed-fee consulting engagement** that sits *upstream* of the previously proposed Claude Co-Work workshop. Its purpose is to de-risk LDC's investment in AI-powered Excel and POS analytics by producing, in advance of any tool purchase or training, four concrete artifacts:

1. A **POS data analysis requirements document** mapped to LDC's actual POS exports across the 33 Jiffy branches and the five other subsidiary lines.
2. A **secure 10-user deployment architecture** that explicitly addresses the shadow-AI and data-sovereignty concerns LDC raised in May 2026, evaluating Claude for Team alongside AionUi + OfficeCLI for an on-premises sovereign lane.
3. A **POS-grounded curriculum outline** for the subsequent workshop, with every module tied to a real LDC dataset rather than generic retail examples.
4. A **feasibility prototype pack** — a recorded guided demo of Claude Co-Work, AionUi, and OfficeCLI running the same analytical task against an LDC sample POS file, packaged with the working prompts and configuration files so LDC can replay or extend the demo in-house.

The engagement is intentionally narrow: discover, evaluate, demonstrate, document. No production tools are purchased, no servers are stood up, no staff are formally trained during these two days. The prototype is a *feasibility demonstration* on LDC's own data — not a deployable production system. The output is a board-ready plan that LDC's executive and IT leadership can approve, modify, or decline with full information.

**Investment:** THB 50,000 fixed fee, payable on delivery of the four artifacts in Section 6.

---

## 2. Why a Discovery Sprint Before the Workshop

LDC has correctly identified two risks that a generic workshop cannot resolve on its own:

- **Shadow AI risk** — staff already use consumer AI tools (Claude.ai Free, ChatGPT, DeepSeek) on confidential POS, margin, and supplier data, with multi-year retention and training-on-input under those vendors' consumer terms.
- **Data sovereignty** — confidential pricing, supplier negotiation, and board-level financial data should not flow to a foreign cloud without explicit governance.

A standard "buy Claude for Team and run a 2-day workshop" engagement would address the *training* gap but leave the *governance* and *architecture* gaps unsolved. The result would be a half-built deployment: trained users with no clear policy on which data goes where, and no controls on which tools they may use.

This sprint closes those gaps before tool purchase. The deliverables answer four questions in writing:

- What POS analysis tasks are actually needed, by which subsidiary, at what cadence?
- Which of those tasks may use Claude for Team (cloud, contractually protected), and which must use a sovereign on-premises path?
- What is the minimum technical footprint required to support 10 named users on the sovereign path, and what does it cost?
- What does the workshop curriculum need to look like so it teaches LDC's actual data, not generic retail examples?

---

## 3. Scope — What Is Included

### 3.1 POS data analysis discovery

- Review of representative POS exports from up to **3 Jiffy branches** spanning different provinces (e.g., Vientiane, Pakse, Luang Prabang) to capture lead-time and ranging variance.
- Review of representative datasets from up to **2 additional subsidiaries** (recommended: SkyCool dealer/order data and Gourmet supplier/margin data, given SkyCool's +31.4% YoY growth and Gourmet's −2.1% YoY decline).
- Catalogue of file formats, schemas, language mix (Lao/English/Thai), data quality issues, and integration points with existing systems (POS, ERP if any).
- Inventory of the **top 8–10 analytical questions** LDC's operations, finance, and merchandising teams need answered weekly or monthly.

### 3.2 Tool stack evaluation

A direct, hands-on comparison across three tool stacks, each tested on the same LDC sample data:

| Stack | Role | What gets evaluated |
|---|---|---|
| **Claude for Team** (Excel add-in + Claude.ai web) | Cloud operational lane | Quality, speed, multi-language handling, ease for non-technical users |
| **AionUi** (https://github.com/iOfficeAI/AionUi) | Desktop client, multi-LLM | Whether the same workflows run with a local model (Qwen2.5 32B) at acceptable quality, plus its bundled OfficeCLI Excel automation |
| **OfficeCLI** (https://github.com/iOfficeAI/OfficeCLI) | Headless `.xlsx` automation backend | Whether deterministic, scriptable Excel operations can replace fragile prompt-only workflows for routine reports |

The deliverable is a **side-by-side scorecard** showing where each tool wins, loses, or ties on LDC's actual data — not a generic feature comparison.

### 3.3 Secure 10-user deployment plan

Concrete architecture for a 10-named-user pilot that addresses the shadow-AI objection directly:

- **Two-lane architecture** (operational vs sovereign) with a written data classification policy showing which subsidiary, which task, which user, and which lane.
- **Hardware sizing** for the sovereign lane (RTX 4090 baseline; RTX 6000 Ada upgrade path) with Vientiane and Bangkok supplier price/lead-time references.
- **Identity, access, and audit plan** — how the 10 user identities are provisioned, logged, and revoked.
- **Shadow-AI control measures** — sanctioned-tool whitelist, blocked-domain approach for consumer AI sites, browser policies, and the "what to redact" checklist staff will be trained against in the subsequent workshop.

### 3.4 Workshop curriculum outline (POS-grounded)

A revised version of the existing 11-module curriculum with every module re-anchored to a specific LDC dataset and subsidiary:

- Module mapping: each module names the dataset (e.g., "Module 5 — Plain-English Formulas, using Jiffy Vientiane Q1 2026 POS export") rather than a generic example.
- Replacement of the generic "Module 10 — Ethical AI" with a concrete **"AI Data Governance & Two-Lane Architecture"** module derived from the deployment plan in 3.3.
- A worked POS analysis example per subsidiary (Jiffy, SkyCool, CR Service, Gourmet, Ants E-Commerce, Zaap), drawn from the actual sample data reviewed during the sprint.

### 3.5 Feasibility prototype pack (guided live demo)

A focused, throw-away prototype intended purely to let LDC *see* the three tool stacks working on its own data before any purchase decision:

- **One representative analytical task** chosen with LDC during Day 1 (e.g., "rank top-10 SKUs by margin contribution across all 33 Jiffy branches for Q1 2026").
- The same task executed live and recorded against:
  - **Claude for Team** (Excel add-in or claude.ai web — operational lane reference)
  - **AionUi + Qwen2.5 32B local** (sovereign lane reference, run on the consultant's workstation, not deployed at LDC)
  - **OfficeCLI** (deterministic backend reference — script-driven, no LLM)
- **Packaged outputs** delivered to LDC: the screen-recorded demo (≈10–20 minutes), the working prompts in plain text, the AionUi configuration file used, and any OfficeCLI commands as a reusable script.

This is an evaluation artifact, **not a production deployment**. It runs on the consultant's hardware during the sprint; LDC does not need to install or host anything. The pack lets LDC re-watch the demo internally, share it with their board, and reproduce the prompts manually after they've purchased the relevant tools.

---

## 4. Out of Scope

To keep the engagement at two days and the fee defensible, the following are explicitly **not** part of this sprint:

- Procurement of any software licences or hardware
- **Production deployment** of Claude for Team, AionUi, Ollama, or OfficeCLI on LDC infrastructure (the prototype pack in 3.5 is a recorded demo from the consultant's workstation, not a system stood up at LDC)
- Multi-user access setup, identity provisioning, server hardening, backup, or monitoring
- Live training of LDC staff (this is the subsequent two-day workshop)
- Custom development against LDC's POS, ERP, or e-commerce systems
- Migration of any production data
- Integration with Microsoft 365, Google Workspace, or any existing identity provider

These activities are correctly part of the workshop and post-workshop implementation phases, priced separately.

---

## 5. Day-by-Day Plan

### Day 1 — Discovery & Hands-On Tool Evaluation

| Time | Activity | Output |
|---|---|---|
| 09:00 – 10:00 | Kickoff with LDC stakeholders (operations, finance, IT). Confirm subsidiaries, users, prototype task, and questions in scope | Scope confirmation memo |
| 10:00 – 12:00 | POS data walkthrough — review sample exports from Jiffy and selected subsidiaries; document schema, format, language mix, and data quality | POS data inventory |
| 12:00 – 13:00 | Lunch |  |
| 13:00 – 16:00 | Hands-on tool evaluation — run identical analytical tasks (top 5 questions from morning session) through Claude for Team, AionUi + Qwen2.5 32B (local), and OfficeCLI | Tool scorecard v1 |
| 16:00 – 17:00 | Day 1 readout with LDC IT — preliminary findings, sovereignty implications, confirmation of prototype task for Day 2 recording | Day 1 working notes |

### Day 2 — Architecture, Curriculum & Prototype Pack

| Time | Activity | Output |
|---|---|---|
| 09:00 – 11:00 | Two-lane architecture design — finalise classification policy, hardware sizing, identity and audit plan | 10-user deployment plan draft |
| 11:00 – 12:00 | Shadow-AI control plan — sanctioned tools, blocked sites, governance roles | Governance section of plan |
| 12:00 – 13:00 | Lunch |  |
| 13:00 – 14:30 | Curriculum re-grounding — map each workshop module to a specific LDC dataset and subsidiary | Curriculum outline v2 |
| 14:30 – 15:30 | Record the prototype pack — same analytical task across Claude for Team, AionUi + Qwen2.5 32B, and OfficeCLI on LDC sample data; package prompts + config + script | Prototype pack (video + files) |
| 15:30 – 16:00 | Final write-up of all five deliverables | Deliverables packaged |
| 16:00 – 17:00 | Closing presentation to LDC executive sponsor + IT lead — walk through architecture and play the prototype recording. Q&A and immediate next-step decision | Sign-off / decision log |

The work can be performed remotely with scheduled video calls at kickoff, mid-day check-in on Day 1, and the closing presentation on Day 2. On-site delivery in Vientiane is available at additional cost (travel and accommodation, billed at cost).

---

## 6. Deliverables

At the end of Day 2, LDC receives the following, in English (Lao or Thai translation available on request at additional cost):

1. **POS Data Analysis Requirements Document** — schemas, sources, languages, data quality findings, and the prioritised list of 8–10 analytical questions per subsidiary.

2. **Tool Stack Evaluation Report** — Claude for Team vs AionUi vs OfficeCLI, scored on LDC's own sample data with explicit recommendations per use case.

3. **Secure 10-User Deployment Plan** — two-lane architecture, hardware sizing, identity/audit/governance plan, total cost of ownership for Year 1 and Year 2+, and a prioritised shadow-AI control list.

4. **POS-Grounded Workshop Curriculum Outline** — module-by-module mapping to LDC datasets, with the AI Data Governance module fully written.

5. **Feasibility Prototype Pack** — recorded guided demo (video file, ≈10–20 min) of the chosen analytical task running across Claude for Team, AionUi + Qwen2.5 32B, and OfficeCLI on LDC sample data, plus the working prompts (text), AionUi configuration file, and OfficeCLI script. Reproducible by LDC after their own tool purchase.

Documents 1–4 are delivered as Markdown and PDF; Deliverable 5 is delivered as MP4 + a folder of text/config files. LDC owns all deliverables and may use, modify, or share them internally without restriction.

---

## 7. Investment

| Item | Amount (THB) |
|---|---:|
| Two-day discovery & architecture consulting (fixed fee) | **50,000** |
| Travel, accommodation, on-site delivery in Vientiane (optional) | At cost, billed separately |
| Lao or Thai translation of deliverables (optional) | Quoted on request |
| **Total payable for the sprint as proposed** | **THB 50,000** |

**Payment terms:**
- 50% on engagement start (deposit)
- 50% on delivery of the four artifacts in Section 6
- Invoiced in Thai Baht; bank transfer to Edknovate

**This sprint credits 100% against the subsequent workshop fee** if LDC commissions the two-day Claude Co-Work workshop (separately proposed) within 60 days of sprint completion. In that case the THB 50,000 is treated as a deposit against the workshop, not an additional charge.

---

## 8. Why This Engagement Is Worth THB 50,000

The fee is justified by what LDC avoids spending elsewhere:

- **Avoided over-purchase risk.** A 50-seat Claude Enterprise commitment without scoping is roughly THB 540,000 / year. A wrong-shaped 10-user pilot is far cheaper to fix in writing than after deployment.
- **Avoided shadow-AI breach.** A single confidential supplier or margin file pasted into a consumer AI site can be retained and used for training under those vendors' terms; the deployment plan and governance policy specifically prevent this.
- **Avoided generic-workshop disappointment.** A workshop run on stock retail examples wastes two days of 10 staff (≈ 160 person-hours). POS-grounded curriculum captures the value LDC is actually paying for.
- **Decision artefact for the board.** The five deliverables together — including the recorded prototype showing the tools running on LDC's own data — form a board-presentable case for AI investment, with sovereignty addressed architecturally rather than rhetorically.

---

## 9. Acceptance & Next Steps

To start this engagement, LDC needs to:

1. **Confirm scope** — sign off on the subsidiaries (default: Jiffy + SkyCool + Gourmet) and analytical questions to be in scope.
2. **Provide sample data** — anonymised POS exports and one representative dataset each from the two subsidiaries selected, **plus one slightly larger sample for the prototype recording** (a single Jiffy multi-branch POS file is sufficient). NDA available on request.
3. **Nominate participants** — one operations lead, one finance/analytics lead, one IT lead for Day 1 kickoff and Day 2 closing.
4. **Confirm delivery mode** — remote (default) or on-site Vientiane.
5. **Sign and return this proposal** with the deposit invoice acknowledged.

Target start: within 2 weeks of acceptance. Target completion: within 5 working days of start.

---

**Contact**
Kirk Pathumanun — Edknovate
kirk@edknovate.com

*This proposal is valid for 30 days from the date above. Linked supporting documents on file: `LDC - AI Data Sovereignty Architecture Analysis.md`, `Claude Cowork Excel Automation Curriculum.md`, `Revised Proposal — Two-Day Claude Co-Work Workshop`.*
