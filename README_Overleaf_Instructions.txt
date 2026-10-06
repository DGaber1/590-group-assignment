HOW TO UPDATE YOUR GROUP OVERLEAF WITH THIS REVISION
======================================================

This zip adds a new "Project Proposal" chapter (Chapter 2) to your group's
SSW 590 report, right after the Linux Commands chapter, and updates the
document history to record it. It also reflects a follow-up decision to
build the project's backend in C#/ASP.NET Core (see "Application stack"
update below). This zip is SELF-CONTAINED: it includes cornell.cls and
IEEEtran.bst, so it compiles on its own whether you upload it as a
brand-new Overleaf project or use it to update files inside your existing
one.

Files in this zip
------------------
1. devopsAssignment.tex        <- your project's main file (now \includes the new chapter)
2. prologue.tex                <- title page + template attribution (unchanged from last revision)
3. devopsDocumentHistory.tex   <- document history table (new top entry added)
4. abstract.tex                <- front-matter abstract (unchanged from last revision)
5. devopsLinuxCommands.tex     <- Chapter 1, Linux Commands (unchanged from last revision)
6. devopsProjectProposal.tex   <- NEW: Chapter 2, Project Proposal
7. cornell.cls                 <- required document class (unchanged from your template)
8. IEEEtran.bst                <- required bibliography style (unchanged; not currently used, kept for future chapters)
9. devopsReferences.bib        <- unchanged; not currently used, kept for future chapters
10. AIPromptLog_entry.txt       <- optional, see note below
11. README_Overleaf_Instructions.txt <- this file

What's in the new Project Proposal chapter
---------------------------------------------
- Project Description: a working title and description ("StudyOps: A
  DevSecOps-Built Personal Academic Dashboard" -- a personal
  assignment/exam/study-session tracker you'd actually use), plus a short
  list of sample tasks the finished app should support.
- Candidate Toolchain table covering source control (GitHub), CI/CD (GitHub
  Actions vs. GitLab CI), containers (Docker/Compose, with Kubernetes/k3s as
  a stretch), infrastructure as code (Terraform vs. Pulumi), hosting (AWS
  vs. DigitalOcean), database (PostgreSQL, managed on each platform),
  testing (unit + integration), security scanning (Dependabot/Snyk, Trivy,
  gitleaks), secrets management, and monitoring (CloudWatch vs. DigitalOcean
  Monitoring, or Prometheus/Grafana). Every tool name is explicitly flagged
  as a candidate, not a commitment, since you said this is still vague at
  this stage.
- A "Planned Tool Comparison" section naming AWS vs. DigitalOcean as the
  primary two-tool comparison (same container image deployed to both),
  compared across security, development experience, hosting, monitoring,
  testing, and operations -- directly matching the rubric's "ideally, two
  comparable tools" bullet.
- An "Operational Dashboard (Planned)" section listing the metrics such a
  dashboard should show (deploy frequency/lead time, build/test/scan pass
  history, uptime, error rate/latency, last-deploy commit + trigger).
- A preliminary, first-pass SWOT chart for AWS and one for DigitalOcean,
  clearly labeled as a rough first draft to be refined once you start
  building.
- Two proposed "something unique" ideas: a weekly scheduled "deadline
  digest" notification, and a live pipeline-status badge in the README.
- The Expectations/Rubric section, reproducing the evaluation criteria you
  gave, cleaned up into a readable list.
- A short colored note box at the end flagging this whole chapter as a
  proposal subject to change once real implementation work starts.

Application stack update (C#/.NET)
--------------------------------------
Following up on your question about using C#/.NET, since it's common in
corporate backends and neither of you has hands-on background in it yet,
the chapter now names it as the backend choice:
- Backend: C# with ASP.NET Core Web API.
- Frontend: kept intentionally simple (plain HTML/JavaScript) so the new
  learning stays focused on the backend, data access, and DevSecOps
  pipeline rather than also picking up an unfamiliar frontend framework.
- Data access: Entity Framework Core (ORM) against PostgreSQL.
- Testing: xUnit (.NET's standard unit-testing framework), run with
  `dotnet test` in the pipeline.
- Containerization: built from the official Microsoft ASP.NET Core runtime
  image; AWS and DigitalOcean both host containerized .NET apps without
  any issue, so the rest of the comparison plan (hosting, dashboard, SWOT)
  is unaffected.
- Security scanning: the dependency-scanning row now explicitly covers
  NuGet packages (the .NET package ecosystem), alongside Trivy and
  gitleaks as before.
The chapter's closing note box now says this stack choice is a firmer
commitment than the other candidates (hosting/CI/CD/IaC remain open),
since it was chosen specifically to build a new skill.

Document History
------------------
Two new top entries, both dated October 6, 2026, author initials DMG:
version 1.5 added the chapter itself, and version 1.6 recorded the C#/.NET
stack decision and the toolchain-table updates that came with it. The
\DocumentVersion was bumped from 1.4 to 1.6 to match.

Steps in Overleaf
------------------
Option A -- update your existing group project (recommended):
1. Open your group's Overleaf project.
2. Upload devopsProjectProposal.tex as a brand-new file (it doesn't exist in
   your project yet).
3. Replace devopsAssignment.tex and devopsDocumentHistory.tex with the
   versions in this zip (they now reference/record the new chapter). The
   other .tex files (prologue.tex, abstract.tex, devopsLinuxCommands.tex)
   are unchanged from the last revision, so you only need to touch them if
   you skipped that update.
4. Recompile (green "Recompile" button) twice -- the chapter uses a few
   internal cross-references (e.g. "see Section 2.2") that need a second
   pass to resolve. If Overleaf shows stale "??" references, use Menu ->
   "Clear cached files" and recompile again.

Option B -- start a brand-new Overleaf project from this zip:
1. In Overleaf, "New Project" -> "Upload Project" and upload this whole zip
   directly. All files it needs are included, so it will compile
   immediately.
2. Set the compiler to pdfLaTeX if Overleaf doesn't detect it automatically
   (Menu -> Compiler).
3. Fill in the remaining bracketed placeholders in devopsAssignment.tex as
   your course requires: \Instructor, \DocumentDate, \DueDate.

A note on the AI Prompt Log
-----------------------------
The AI Prompt Log appendix isn't part of the compiled PDF (removed in the
previous revision along with the other appendices), but your template's own
Academic Integrity guidance still asks you to record material AI
assistance somewhere. AIPromptLog_entry.txt has a drafted entry from the
Linux Commands chapter; you may want to add a second entry for this Project
Proposal chapter, noting that the project idea, toolchain candidates,
comparison plan, and SWOT drafts were produced by Claude from your stated
goals (a functional, personally useful tool; corporate-relevant tooling
experience) and the course's evaluation rubric, for your group to review
and revise as you firm up the plan.

This revision was test-compiled locally with pdflatex + makeindex (clean
room, nothing but these files) to confirm it builds cleanly: 30 pages, no
undefined references.
