# LDC Import-Export Group — AI Data Sovereignty & Architecture Analysis

**Prepared for:** LDC Import-Export Group — proposal supporting material
**Prepared by:** Edknovate (Claude Cowork Workshop)
**Date:** 2026-05-08
**Scope:** 10-user pilot deployment
**Status:** Internal working draft — for use in proposal preparation

---

## 1. Executive Summary

LDC Import-Export Group has raised a legitimate concern about Claude Cowork: that using a cloud-hosted AI for spreadsheet analysis exposes confidential sales and operational data to Anthropic, and that "shadow AI" usage by staff cannot be controlled.

This document separates **what is technically true** from **what is overstated**, evaluates the realistic architecture options (Claude for Team, agent-zero, OfficeCLI, AionUi, and hybrid configurations), and provides a **10-user pilot recommendation** sized for LDC's initial workshop scope.

**Recommended primary path:** **Option H — Hybrid**: Claude for Team for non-sensitive operational analysis + AionUi with on-prem Ollama (Qwen2.5 32B on a single RTX 4090 workstation) for confidential workloads. Year 1 cost approximately **USD 9,000–10,000**; Year 2 onward approximately **USD 5,500–6,500**.

**Recommended fallback if cloud AI is rejected outright:** **Option E** — AionUi + Ollama with Qwen2.5 72B on an RTX 6000 Ada workstation (~USD 15,000–18,000 Year 1).

**Recommended fallback if budget is the binding constraint:** **Option A** — Claude for Team alone (~USD 3,600/yr), paired with a workshop module on data classification and sanctioned-tool governance.

---

## 2. The Customer Objection in Context

LDC's stated concern has two parts:

1. **Cloud data exposure** — "If we use Claude Cowork for spreadsheet analysis, there is no way to stop Anthropic from extracting the data."
2. **Shadow AI risk** — staff using AI tools outside IT governance, potentially leaking confidential information.

Both concerns are legitimate. They require different responses.

### 2.1 What is technically true

- **Data does leave LDC's environment when using any cloud LLM.** Claude Cowork, ChatGPT Enterprise, Microsoft Copilot, Google Gemini all process inputs on the vendor's servers. There is no on-device or on-premises version of Claude Cowork.
- **Shadow AI is a real, present risk.** If LDC employees use *consumer* Claude.ai (Free / Pro), ChatGPT Free, or DeepSeek Free today, that data **can be used for model training** under those vendors' consumer policies, with multi-year retention and no audit trail.

### 2.2 What is overstated

The claim "there is no way to stop Anthropic from extracting the data" is incorrect when LDC purchases the appropriate commercial tier:

| Tier | Training on customer data | Retention | Audit / Compliance |
|---|---|---|---|
| Claude.ai Free / Pro / Max (consumer) | **Yes by default** (opt-out per user) | Up to 5 years | None |
| Claude for Work — Team | **No (contractually prohibited)** | 30 days default | SOC 2 Type II |
| Claude for Work — Enterprise | **No (contractually prohibited)** | 30 days default; **zero-retention available** | SOC 2 Type II, ISO 27001, HIPAA-eligible, dedicated security review |
| Claude API / AWS Bedrock / GCP Vertex | **No** | 30 days default; zero-retention available | Same as above |

The Anthropic Commercial Terms of Service explicitly prohibit training on commercial customer inputs and outputs. This is contractual obligation, not marketing language.

### 2.3 Implication for the LDC sale

The honest pitch is **not** "your data is safe with Claude." It is:

1. **The shadow AI risk is exactly why the workshop is the cure, not the cause.** Untrained staff already paste data into ChatGPT and DeepSeek today. The workshop establishes governed usage on a contractually-protected tier.
2. **Tier choice matters.** Recommend Team or Enterprise, not consumer Claude.ai.
3. **Tool + policy beats tool alone.** Pair sanctioned tooling with a data classification policy and a "what to redact" checklist as part of the workshop deliverable.

---

## 3. Architecture Options Evaluated

### 3.1 agent-zero (https://github.com/agent0ai/agent-zero)

- **Type:** General-purpose agentic framework
- **Stars:** 17.6k, active, Apache-licensed
- **Architecture:** Docker + Linux. LLM-agnostic (OpenAI, Anthropic, local via Ollama)
- **Office support:** **LibreOffice only** (ODS, ODT, ODP) — not native Microsoft Excel
- **Audience:** Developers and AI engineers, not end-users
- **Verdict for LDC:** **Skip.** LDC is a Microsoft Office shop, has no AI engineering team, and needs an end-user product. agent-zero is the wrong abstraction layer for this customer.

### 3.2 OfficeCLI (https://github.com/iOfficeAI/OfficeCLI)

- **Type:** Headless CLI for native Microsoft Office files
- **Stars:** 3.1k, very active (76+ releases), Apache 2.0
- **Excel capability:** 150+ functions, pivot tables, charts, named ranges, conditional formatting, multi-sheet workbooks — all on `.xlsx` files, no MS Office installation required
- **Data flow:** Pure local file operations
- **Integration:** MCP server for use as a tool from Claude Code, Cursor, VS Code Copilot, LM Studio, AionUi
- **Verdict for LDC:** **Use as backend, not standalone.** OfficeCLI is the deterministic execution layer that any of the recommended options below will use under the hood. It is already bundled inside AionUi.

### 3.3 AionUi (https://github.com/iOfficeAI/AionUi)

- **Type:** Electron desktop "Cowork-style" application
- **Stars:** 24k, very active, Apache 2.0
- **Latest version:** v1.9.25 (May 2026)
- **System requirements:** Windows 10+, macOS 10.15+, Linux Ubuntu 18.04+, 4GB+ RAM, 500MB storage
- **LLM support:** 20+ providers including:
  - **Cloud:** Anthropic Claude, Google Gemini, OpenAI, AWS Bedrock, Dashscope (Qwen), Zhipu, Moonshot, Qianfan
  - **Local:** Ollama, LM Studio
- **Architecture:** AionUi orchestrates an underlying agent runtime — typically Claude Code (for Anthropic), Gemini CLI (for Google), or a local LLM endpoint — and uses the bundled OfficeCLI skills for native Excel/Word/PowerPoint operations
- **Data flow caveat:** When AionUi is configured with Claude or Gemini, data still travels to those vendors' APIs. **Only Ollama / LM Studio configurations give true on-premises sovereignty.** Files themselves stay local in all configurations
- **Verdict for LDC:** **Strong fit as the user-facing client** when paired with a local LLM, or as a multi-vendor flexibility layer if LDC wants to switch between cloud providers in the future

### 3.4 Claude for Team

- **Type:** Anthropic's commercial cloud product
- **Pricing:** USD 30 / user / month, minimum 5 seats
- **Includes:** Claude.ai web and desktop, Projects, Claude for Excel add-in, central billing and admin
- **Data terms:** No training on customer data. 30-day retention.
- **Verdict for LDC:** **Best out-of-the-box quality and easiest workshop delivery.** Does not provide architectural sovereignty — only contractual protection.

---

## 4. 10-User Scenario — Cost & Capability Comparison

**Assumptions:**
- 10 named seats
- Daily moderate use: ~500k input + 100k output tokens / user / day
- 250 working days per year
- Hardware sized for ~5 concurrent users on a shared LAN box (typical for 10 named users with staggered usage)
- Hardware costs reflect Asia-Pacific street prices, USD

| # | Option | Year 1 Cost (USD) | Year 2+ | Sovereignty | Quality | Workshop Fit |
|---|---|---:|---:|---|---|---|
| **A** | **Claude for Team** (10 × $30/mo) | **$3,600** | $3,600 | Contractual only | ⭐⭐⭐⭐⭐ | Easiest — drop-in, matches existing demo |
| B | Claude Pro individual (10 × $20/mo) | $2,400 | $2,400 | Contractual + consumer training default | ⭐⭐⭐⭐⭐ | Not recommended — fails LDC's objection harder |
| C | Claude Enterprise | n/a | n/a | Contractual + zero-retention | ⭐⭐⭐⭐⭐ | Min 50+ seats — not feasible at 10 users |
| **D** | **AionUi + Ollama (Qwen2.5 32B) on 1× RTX 4090** | **~$9,000–10,000** (HW $5k + ops $5k) | ~$5,000–8,000 | True — never leaves LAN | ⭐⭐⭐ | Medium — slower, weaker reasoning |
| **E** | **AionUi + Ollama (Qwen2.5 72B 4-bit) on 1× RTX 6000 Ada 48GB** | **~$15,000–18,000** (HW $10–13k + ops $5k) | ~$5,000 | True | ⭐⭐⭐⭐ | Medium — close to Claude on routine tasks |
| F | AionUi + Claude API (BYO key, Sonnet 4.6) | ~$9,000 (token spend) | ~$9,000 | Contractual only (same as A) | ⭐⭐⭐⭐⭐ | Not recommended — strictly dominated by Option A |
| G | AionUi + Gemini 2.5 Pro API | ~$3,400 | $3,400 | Contractual (Google terms) | ⭐⭐⭐⭐ | Medium — Workspace data terms vary by tier |
| **H** | **HYBRID: Claude for Team + AionUi/Ollama (RTX 4090) sovereign lane** | **~$9,000–10,000** | ~$5,500–6,500 | Mixed — sovereign for sensitive, contractual for ops | ⭐⭐⭐⭐⭐ ops, ⭐⭐⭐ sovereign | Best — workshop teaches both lanes |

---

## 5. Key Reads at 10-User Scale

1. **Claude for Team is inexpensive at this scale.** $3,600/yr puts it in petty cash for an organization of LDC's size. At 400 users the on-prem GPU pays back quickly; at 10 users it does not — *unless sovereignty is non-negotiable*.

2. **Option F (AionUi + Claude API) makes no economic sense at 10 users.** It costs 2.5× Team plan ($9k vs $3.6k) for the **same data path** to Anthropic. AionUi's value over Claude Cowork is either (a) sovereign LLMs via Ollama, or (b) BYO-Gemini if Google is preferred. Using AionUi with the Claude API delivers neither benefit.

3. **Gemini through AionUi (Option G) is the cheapest cloud option** — roughly equal cost to Claude Team. Worth considering if LDC is already on Google Workspace, but Google's data terms differ by Workspace tier and must be reviewed before pitching.

4. **The sovereignty premium is small at 10 users.** Sovereign lane (Option D) costs ~$6k more in Year 1 than Team plan and is roughly equal in Year 2+. That is affordable enough that LDC may say yes purely for the political and audit narrative — even if the technical risk is low.

5. **Hybrid (Option H) at 10 users costs ~$10k Year 1 / ~$6k Year 2+.** Only ~3× Team plan. Gives LDC a defensible "two-lane" architecture their CIO can present to the board, and positions the workshop as the **governance backbone** that decides which lane each task uses.

---

## 6. Recommendation

### 6.1 Primary recommendation — Option H Hybrid

**Year 1 budget: ~USD 9,000–10,000. Year 2+: ~USD 5,500–6,500.**

| Lane | Stack | Use Cases | Cost |
|---|---|---|---|
| **Operational lane** | Claude for Team (10 seats) | Jiffy multi-branch sales cleanup, dealer rankings, contract tracking, marketing copy, customer communications, supplier emails, general reporting | $3,600/yr |
| **Sovereign lane** | AionUi + Ollama + Qwen2.5 32B on 1× RTX 4090 workstation, accessed by all 10 users over LAN | Margin and pricing analysis, supplier negotiation prep, M&A scenarios, internal financial planning, employee data, board-level analysis | $5k HW + $1–2k/yr ops |
| **Workshop deliverable** | Day 2 module: data classification policy + decision tree for which lane each task uses | Becomes a permanent governance asset | included |

**Why this wins:**
- Solves the stated objection architecturally (sensitive data never leaves the LAN)
- Preserves model quality where it matters most (the operational use cases that drive the workshop's ROI story)
- Creates a teachable deliverable — the classification policy — that justifies the workshop's existence beyond tool training
- Gives LDC a board-ready story: "two-lane AI governance"

### 6.2 Fallback A — sovereignty is non-negotiable

**Option E:** AionUi + Ollama + Qwen2.5 72B 4-bit on 1× RTX 6000 Ada 48GB.
**Year 1: ~USD 15,000–18,000. Year 2+: ~USD 5,000.**
Use if LDC's IT or legal team refuses any cloud AI usage. Qwen2.5 72B is the smallest local model that holds up on serious mixed-language business reasoning.

### 6.3 Fallback B — budget is the binding constraint

**Option A alone:** Claude for Team, 10 seats, $3,600/yr.
Frame the sovereignty answer as **contractual + the workshop's governance module** rather than architectural. This is credible at 10 users and may be the right starting point if LDC wants to validate ROI before deeper investment.

### 6.4 Anti-recommendations

- **Do not propose agent-zero.** Wrong file format (LibreOffice), too developer-heavy, no end-user polish.
- **Do not propose Option F (AionUi + Claude API).** Strictly dominated by Claude for Team at this scale.
- **Do not propose Claude Pro consumer plans (Option B).** Defaults to data training; fails the objection.

---

## 7. Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Local LLM quality gap breaks workshop credibility | Medium | High | Use Qwen2.5 32B minimum (Option D); upgrade to 72B (Option E) if confidential workflows demand it. Run quality test on representative LDC scenarios before workshop |
| LDC IT lacks Ollama/AionUi operational skill | High | Medium | Include 2-day handover + 30-day post-workshop support in proposal. Document install/update playbook |
| GPU procurement lead time in Laos | Medium | Medium | Confirm RTX 4090 / RTX 6000 availability via Vientiane suppliers before commitment. Bangkok backup option |
| Workshop attendees confused by two-lane model | Medium | Medium | Day 2 module with concrete decision tree and 6 worked examples (one per LDC subsidiary) |
| Local LLM mixed Lao/English performance unknown | Medium | Medium | Pre-workshop quality test on 10 representative LDC use cases. Document where each lane wins |
| Claude pricing or terms change mid-engagement | Low | Medium | Lock annual contract; include exit clause in proposal SOW |

---

## 8. Next Steps

### Before sending the proposal
1. **Pre-workshop quality test** — pick 5 representative LDC tasks (one each from Jiffy, SkyCool, CR Service, Gourmet, Ants), run through both Claude Sonnet 4.6 and Qwen2.5 32B, document quality delta in mixed Lao/English content
2. **Hardware sourcing** — confirm RTX 4090 and RTX 6000 Ada lead times and prices via Vientiane and Bangkok suppliers
3. **Update the proposal** — Section 7 (currently a placeholder) with the Option H pricing, plus optional E and A line items
4. **Update the curriculum** — replace generic Module 10 (Ethical AI) with concrete "AI Data Governance & Two-Lane Architecture" module

### After LDC review
5. **Discovery call to confirm sovereignty stance** — is the concern hard ("nothing leaves Laos") or soft ("we want governance")? This determines Option H vs Option A
6. **CIO/IT walkthrough** — present architecture diagram and SOC 2 documentation for cloud lane
7. **Pilot scoping** — confirm 10 user identities, lane assignment per role, success metrics

---

## 9. Web Deployment Options (no desktop install)

LDC has asked whether Claude Cowork's spreadsheet manipulation capability can be delivered via a **web app instead of a desktop install**. This section evaluates the realistic web paths.

These are *delivery channel* options. They overlay on top of the architecture options in Section 4 — choice of architecture and choice of delivery channel are independent decisions.

### 9.1 The fundamental trade-off

Claude Cowork's desktop add-in has one capability that no web product can replicate: **in-place editing of an `.xlsx` file sitting on the user's local laptop**. Browsers do not have OS-level filesystem access to arbitrary user files. Every web alternative gives this up in one of two ways:

1. **Upload → analyze → download** — the file leaves the user's laptop, gets processed, and the result is downloaded back
2. **File lives in the browser or cloud** — using a web-based spreadsheet (Excel for the Web, Google Sheets, Univer) where the file is already in the browser context

In practice, even the desktop Cowork workflow is mostly *analyze-and-suggest*, not silent in-place writes — so the trade-off is smaller than it sounds.

### 9.2 Web Option 1 — Claude.ai web (Team plan)

- **Description:** Pure web at `claude.ai` on the Team tier. Drag-drop `.xlsx`, ask anything, get analysis or a modified file back to download
- **Cost:** 10 × $30/mo = **$3,600/yr**
- **Data terms:** Same as Section 2.2 — Commercial Terms, no training, 30-day retention
- **Setup effort:** Zero — already part of any Claude for Team subscription
- **Trade-off:** Upload/download cycle, no in-place editing
- **Verdict for LDC:** Simplest possible answer. Available today.

### 9.3 Web Option 2 — Microsoft 365 Copilot in Excel for the Web

- **Description:** Excel runs in the browser at office.com; Copilot panel docks alongside. Closest UX match to a desktop Cowork add-in, but with Microsoft's AI instead of Claude
- **Cost:** ~$30/user/mo on top of an existing M365 license
- **Data terms:** Microsoft Commercial Terms (similar contractual no-training stance, but a different vendor)
- **Setup effort:** Low — assumes M365 already deployed
- **Trade-off:** Vendor switch from Anthropic to Microsoft. Same cloud-data question, just a different name on the contract
- **Verdict for LDC:** Worth considering only if LDC is already on M365 and has political reasons to prefer Microsoft. Does not solve the sovereignty question — just relabels it.

### 9.4 Web Option 3 — Open WebUI + OfficeCLI MCP + LLM (self-hosted)

- **Description:** Self-hosted web app (Open WebUI or LibreChat) with OfficeCLI exposed as an MCP tool. Users access via browser at e.g. `https://ai.ldc.la`. Upload `.xlsx`, AI calls OfficeCLI server-side to manipulate it, download result
- **LLM choice:** Claude API (cloud, contractual), Gemini API (cloud, Google terms), or **Ollama for true sovereignty**
- **Cost:** Same as Section 4 architecture options depending on LLM (~$8–10k Yr 1 with on-prem Ollama)
- **Setup effort:** 1–2 days for an experienced sysadmin
- **Trade-off:** Upload/download workflow; less Excel-native UX than a dedicated spreadsheet app
- **Verdict for LDC:** Best fit if "no desktop install + sovereign LLM + centralized governance" is the requirement. Single point of audit, RBAC and SSO out of the box, easier to manage than 10 desktop installs.

### 9.5 Web Option 4 — Univer + AI (advanced, custom)

- **Description:** Univer is an open-source web-based spreadsheet SDK (looks and feels like Excel in the browser, Apache 2.0, 12.9k stars, v0.21.1 April 2026). Combined with AI integration via MCP, gives the most native Excel-like web UX
- **Cost:** Open-source core is free, but **`.xlsx` import/export and pivot tables are paid Pro features** — pricing not public, requires direct contact with dream-num
- **Setup effort:** Significant — Univer is an SDK to embed, not a finished product. Requires custom development to integrate AI panel and OfficeCLI/MCP
- **Trade-off:** Engineering investment; you become a builder, not a deployer
- **Verdict for LDC:** Overkill for a 10-user pilot. Revisit if/when LDC scales to 100+ users and wants a unified branded internal tool.

### 9.6 Web deployment options — comparison table

| Web Option | Yr 1 Cost (USD) | Setup Effort | Sovereignty | UX vs Desktop Cowork |
|---|---:|---|---|---|
| **W1. Claude.ai Team web** | **$3,600** | Zero | Contractual only | Upload/download instead of in-place |
| W2. M365 Copilot in Excel for Web | ~$3,600 + M365 | Low (assumes M365) | Contractual only (Microsoft) | Closest match — Excel in browser |
| **W3. Open WebUI + OfficeCLI + Ollama** | **~$8–10k** | 1–2 days dev | True (with Ollama) | Upload/download, web chat UI |
| W4. Univer + custom AI | $15k+ (estimate) | Weeks of dev | Configurable | Most Excel-like, but a build project |

### 9.7 Recommendation for LDC's web requirement

**Start with Web Option 1 (Claude.ai Team) for the pilot.**

Reasons:
1. Available today with the Team subscription already in the Section 6 recommendation — no additional spend
2. Zero engineering effort and zero setup time
3. Validates whether the upload/download workflow actually works for LDC's 10 users in practice
4. Same Claude model quality as the desktop Cowork add-in
5. If after 30 days LDC says "the workflow works but we need it self-hosted," graduate to Web Option 3 — same workflow pattern, just a different host

**If LDC's IT or legal team rejects cloud AI outright at the pilot stage**, skip Option 1 and go directly to Web Option 3 with on-prem Ollama. Cost is similar to Section 6's Option H Hybrid (~$8–10k Yr 1).

**Decision flow for LDC:**

```
Does LDC accept contractual data protection?
├── YES → Web Option 1 (Claude.ai Team web)            $3,600/yr, zero setup
└── NO  → Does LDC have engineering capacity?
         ├── YES → Web Option 3 (Open WebUI + Ollama)  ~$8–10k Yr 1
         └── NO  → Re-pitch with workshop governance
                   module + Web Option 1 + classification
                   policy (workshop solves the problem,
                   not architecture)
```

### 9.8 What this changes in the proposal

- Add "no desktop install required" as a feature bullet — the workshop and ongoing usage can be 100% browser-based
- Section 7 pricing should now show **two delivery options at the same price** (desktop install via Claude for Excel add-in, OR browser via Claude.ai web)
- Day 1 demo flow updated to use claude.ai web instead of the desktop add-in for any participants without Excel installed locally

---

## Appendix A — Tool Fact Sheet

| Tool | License | Stars | Active | Best Used As | Cost |
|---|---|---|---|---|---|
| Claude for Team | Commercial | n/a | Yes | Operational lane, primary | $30/seat/mo |
| Claude Enterprise | Commercial | n/a | Yes | Not feasible at 10 users | Custom (50+ seat min) |
| AionUi | Apache 2.0 | 24k | v1.9.25, May 2026 | User-facing client for sovereign lane | Free |
| OfficeCLI | Apache 2.0 | 3.1k | v1.0.75, May 2026 | Excel automation backend (bundled inside AionUi) | Free |
| Ollama + Qwen2.5 32B | Apache 2.0 + Tongyi | n/a | Yes | LLM runtime for sovereign lane (32GB workstation OK) | Free |
| Ollama + Qwen2.5 72B | Apache 2.0 + Tongyi | n/a | Yes | LLM runtime for sovereign lane (48GB+ GPU) | Free |
| agent-zero | Apache 2.0 | 17.6k | Yes | **Not recommended for LDC** | Free |

---

## Appendix B — Sources

- [agent-zero on GitHub](https://github.com/agent0ai/agent-zero)
- [OfficeCLI on GitHub](https://github.com/iOfficeAI/OfficeCLI)
- [AionUi on GitHub](https://github.com/iOfficeAI/AionUi)
- [AionUi v1.9.25 release notes](https://github.com/iOfficeAI/AionUi/releases)
- [Anthropic Commercial Terms of Service](https://www.anthropic.com/legal/commercial-terms)
- [Anthropic Trust Center (SOC 2, ISO 27001)](https://trust.anthropic.com)
- [Anthropic pricing](https://www.anthropic.com/pricing)
- [Google Gemini API pricing](https://ai.google.dev/pricing)
- [Ollama](https://ollama.com)
- [Qwen2.5 model card](https://huggingface.co/Qwen)
- [Open WebUI on GitHub](https://github.com/open-webui/open-webui)
- [LibreChat on GitHub](https://github.com/danny-avila/LibreChat)
- [AnythingLLM on GitHub](https://github.com/Mintplex-Labs/anything-llm)
- [LobeChat on GitHub](https://github.com/lobehub/lobe-chat)
- [Dify on GitHub](https://github.com/langgenius/dify)
- [Univer on GitHub](https://github.com/dream-num/univer)
- [Claude.ai (web)](https://claude.ai)
- [Microsoft 365 Copilot for Excel](https://www.microsoft.com/microsoft-365/copilot)

---

*Document version 1.1 — 2026-05-08 (Section 9 web deployment options added)*
