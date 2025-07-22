# College of Analytics and Migration HOL: Snowconvert HOL with SQL Server and AI
**Utilize Snowconvert to quickly understand the scope of your migration**

---

## 🎬 Lab Overview Video
Watch the [X-minute Lab Overview Video](overview.mp4) for a detailed walkthrough of key lab phases.

---

## 🛠️ Hands-On Lab Overview

In this hands-on lab, you'll step into the shoes of **Data Engineer** tasked with **Migrating from SQL Server to Snowflake**.

### 📋 What You’ll Do:
In this lab we will look at the Adventure Works database inside a SQL Server database. We will take a look at the catalog objects (tables, views) and some of the code that is there (stored procedures). Snowconvert will then extract that information and look for possible roadblocks to a migration and processes to consider. It will suggest some solutions but we will find out that the solutions it offers are not a best practice. This is where the GenAI integration of Snowflake Cortex will come into play to help us get possible solutions to this other than what SnowConvert generates programmatically.

We will then take those changes and migrate the structures as well as the data to our snowflake environment.
List of 4–6 concrete tasks participants will complete. Clearly bold important terms.
- **Task 1:** Connect to a SQL Server database and pull catalog information
- **Task 2:** Generate the input code from SQL Server
- **Task 3:** Understand the errors that SnowConvert surfaces
- **Task 4:** Resolve those errors using Cortex
- **Task 5:** Move the structure and the data to Snowflake

### ⏲️ Estimated Lab Timeline

Provide a brief agenda to help SEs understand pacing:

- **Phase 1 (Env setup & model training):** ~10 min
- **Phase 2 (Running the Migration):** ~30 min
  
---

## 📖 Table of Contents

- [Why this Matters](#why-this-matters)
- [Suggested Discovery Questions](#suggested-discovery-questions)
- [Repository Structure](#repository-structure)
- [Prerequisites & Setup Details](#prerequisites--setup-details)
- [Estimated Lab Timeline](#estimated-lab-timeline)
- [Placeholder & Naming Conventions](#placeholder--naming-conventions)
- [Troubleshooting & FAQ](#troubleshooting--faq)
- [Cleanup & Cost-Stewardship Procedures](#cleanup--cost-stewardship-procedures)
- [Advanced Concepts (Salted in Training)](#advanced-concepts-salted-in-training)
- [Links to Internal Resources & Helpful Documents](#links-to-internal-resources--helpful-documents)

---

## 📌 Why this Matters

- **Business value:** Clearly explain how this lab impacts KPIs (e.g. accelerates time-to-insight by X%, reduces manual processes by Y hours per month).
- **Pricing impact:** Highlight compute and storage cost expectations and best practices for efficient resource use (e.g., turning off resources when idle to reduce costs by Z%).
- **Customer stories:** Link to decks, blogs or other information to promote reference stories.

---

## ❓ Suggested Discovery Questions

Provide **5 to 6 open-ended questions** for customer conversations related to this HOL.

- "How are you currently handling [specific task or issue related to this HOL]?"
- "What metrics matter most when evaluating [specific task or issue related to this HOL]?"
- "Have you faced any security or compliance roadblocks with [specific task or issue related to this HOL]?"
- "How would you customize this pattern for your environment?"

---

## 📂 Repository Structure

```bash
├── README.md           # Main entry point
├── config/             # Configuration templates, credentials
├── code/               # SQL/Python scripts for automation
├── notebooks/          # Interactive Jupyter notebooks
├── data/               # Datasets (CSV, JSON) or external links
├── images/             # Diagrams and visual assets
├── lab_instructions/   # Step-by-step detailed instructions
│ ├── phase1_task1.md
│ ├── phase2_task2.md
│ └── phase3_task3.md
└── troubleshooting/    # Common issues and resolutions
└── faq.md
```
---

## ✅ Prerequisites & Setup Details

Internally helpful setup requirements:

- **Knowledge prerequisites:** List required skills or prior knowledge.
- **Account and entitlement checks:** Necessary roles/users, network policies, external functions.
- **Hardware/software:** Supported browsers, recommended accounts, required Python packages.

---

## 🔖 Placeholder & Naming Conventions

Clearly define naming conventions:

- Databases/schemas/tables: `PROJ_DEMO_<your initials>_HOL`
- Model versions: `COLLEGE_AI_HOL_<MODEL_NAME>_v1`
- Secrets management: Safely store credentials and API keys (never commit to GitHub).

---

## ⚠️ Troubleshooting & FAQ

Common errors and resolutions:

**Issue:** Model registration network timeout  
**Cause:** Likely incorrect VPC endpoint configuration  
**Solution:** Verify correct VPC endpoint and security group settings in AWS, then reattempt the registration.

Provide internal Slack channels or support queue links.

---

## 🧹 Cleanup & Cost-Stewardship Procedures

🗑 **Cleanup Instructions:**
- Run the command `DROP WAREHOUSE IF EXISTS [your warehouse];` in Snowflake after lab completion.
- Immediately shut down your SageMaker instance through AWS Console:
  - Navigate to SageMaker > JupyterLab Spaces.
  - Stop or delete your workspace.

---

## 📘 Advanced Concepts (Salted in Training)

Brief callouts to deeper internal learning topics:

- **Topic 1:** Brief deeper context.
- **Topic 2:** Brief deeper context.
- **Topic 3:** Brief deeper context.

---

## 🔗 Links to Internal Resources & Helpful Documents

- [Snowflake Documentation](#)
- [Best Practices](#)
- [Quickstarts](#)
- [Internal Wiki & Guidelines](#)

---

## 👤 Author & Support

**Lab created by:** [Your Name] – [Your Job Title or Team]  
**Created on:** [Month DD, YYYY] | **Last updated:** [Month DD, YYYY]

💬 **Need Help or Have Feedback?**  
- Slack Channel: [#your-slack-channel-name](https://your-slack-channel-link)  
- Slack DM: [@YourSlackUsername](https://your-direct-slack-profile-link)  
- Email: [your.email@example.com](mailto:your.email@example.com)

🌟 *We greatly value your feedback to continuously improve our HOL experiences!*
