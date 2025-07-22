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
- **[Phase 2 (Running the Migration)](/lab_instructions/readme.md):** ~30 min
  
---

## 📖 Table of Contents

- [Why this Matters](#-why-this-matters)
- [Suggested Discovery Questions](#-suggested-discovery-questions)
- [Repository Structure](#-repository-structure)
- [Prerequisites & Setup Details](#-prerequisites--setup-details)
- [Estimated Lab Timeline](#-estimated-lab-timeline)
- [Troubleshooting & FAQ](#%EF%B8%8F-troubleshooting--faq)
- [Cleanup & Cost-Stewardship Procedures](#-cleanup--cost-stewardship-procedures)
- [Links to Internal Resources & Helpful Documents](#-links-to-internal-resources--helpful-documents)

---

## 📌 Why this Matters

- **Business value:** Migration is multifaceted, involving code, data structures, pipelines, and business logic. SnowConvert simplifies code and structure migration. The Snowpark Migration Assistant is intended to aid in pipeline conversions, offering a foundational step for a complex migration process. 
> SnowConvert provides a high-level overview of migration complexity, aiding customers in developing detailed migration plans and understanding the scope and effort required. Automated migration tools can underestimate the necessary work due to business rule and technology changes; simply replicating old processes in a new system is often insufficient. The effectiveness of SnowConvert depends on the quality of the data it analyzes and is typically not the only part of a migration to worry about but is a great place to get started
- **Pricing impact:** There is no cost to utilize this tool, the cost comes in the work done on the database and the storage of the new objects, but the tool itself is free to use
- **Customer stories:** Link to decks, blogs or other information to promote reference stories.

---

## ❓ Suggested Discovery Questions

- "How are you currently handling migrations from legacy systems to Snowflake?"
- "What metrics matter most when evaluating costs or complexity of a migration?"
- "Have you faced any security or compliance roadblocks with migrating sensitive data from legacy systems?"
- "How would you customize this pattern for your environment?"

---

## 📂 Repository Structure

```bash
├── README.md           # Main entry point
├── config             # DORA Setup
├── images             # Diagrams and visual assets
├── lab_instructions   # Step-by-step detailed instructions
│ ├── images           # Screenshots for the lab
└── troubleshooting/   # Common issues and resolutions
```
---

## ✅ Prerequisites & Setup Details

Internally helpful setup requirements:

- **Knowledge prerequisites:** Understanding of the goals, pipelines, sources, data size, frequency of updates, ETL patterns of the current envrionment
- **Account and entitlement checks:** None
- **Hardware/software:** This is a stand alone applciation you download and is only supported on Macs and Windows

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
- Run the command in Snowflake after lab completion.
```sql
DROP database IF EXISTS AdventureWorks;
``` 
- You can optionally remove any folders locally that were created for the migration by SnowConvert

---


## 🔗 Links to Internal Resources & Helpful Documents

- [Snowflake Documentation](https://docs.snowflake.com/en/migrations/snowconvert-docs/general/getting-started/README)
- [Professional Services GTM Catalog](https://snowflake.seismic.com/Link/Content/DC4X82m96XPWcGWGMpCRMpMPW4p3)
- [Internal Wiki & Guidelines](#)

---

## 👤 Author & Support

**Lab created by:** Dan Murphy – SE Enablement Senior Manager  
**Created on:** July 23, 2025 | **Last updated:** July 23, 2025

💬 **Need Help or Have Feedback?**  
- Slack Channel: [#college-of-analytics-and-migrations](https://snowflake.enterprise.slack.com/archives/C06R6B6MBNC)  
- Slack Channel: [#snowconvert-technical-support](https://snowflake.enterprise.slack.com/archives/C04QD2LN37H)  
- Slack DM: [@dan.murphy](https://snowflake.enterprise.slack.com/team/WEJR92JS2)  
- Email: [dan.murphy@snowflake.com](mailto:dan.murphy@snowflake.com)

🌟 *We greatly value your feedback to continuously improve our HOL experiences!*
