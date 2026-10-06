HOW TO UPDATE YOUR GROUP OVERLEAF WITH THIS REVISION
======================================================

This zip trims your group's SSW 590 project down to a single, general report
containing only the "Linux Commands" chapter, per your latest requested
changes. This zip is now SELF-CONTAINED: it includes cornell.cls and
IEEEtran.bst (the support files your document class needs), so it will
compile on its own whether you upload it as a brand-new Overleaf project or
use it to update files inside your existing one.

(If you compiled the previous zip and got "LaTeX Error: File `cornell.cls'
not found", that's because that zip only had the 5 files I had edited, on
the assumption you'd drop them into your existing project which already had
cornell.cls. This zip fixes that by including everything needed.)

Files in this zip
------------------
1. devopsAssignment.tex        <- your project's main file
2. prologue.tex                <- title page + template attribution
3. devopsDocumentHistory.tex   <- document history table
4. abstract.tex                <- front-matter abstract
5. devopsLinuxCommands.tex     <- the Linux Commands chapter itself
6. cornell.cls                 <- required document class (unchanged from your template)
7. IEEEtran.bst                <- required bibliography style (unchanged; not currently used, kept for future chapters)
8. devopsReferences.bib        <- unchanged; not currently used, kept for future chapters
9. AIPromptLog_entry.txt       <- optional, see note below
10. README_Overleaf_Instructions.txt <- this file

What changed from the previous version
----------------------------------------
- Removed every chapter except Linux Commands: the Introduction, Example
  Assignment, and all three appendix chapters (Document Authoring Guide, AI
  Agent Usage Guide, AI Prompt Log) are no longer \include'd, so they no
  longer appear in the compiled PDF. Linux Commands is now Chapter 1.
- Removed the glossary and bibliography machinery (\makeglossaries, the
  glossary input, \printglossaries, \bibliographystyle/\bibliography), since
  those existed only to support the chapters that were removed. The Index
  is kept, since the Linux Commands chapter still contributes index entries.
- Generalized the document title to "SSW 590 Group Project" (dropped the
  "Assignment N: <title>" framing) so the same report can hold every future
  assignment as its own chapter without re-titling the whole document. The
  running page header was updated to match.
- Set the title-page author to Deanna Gaber and Rifat Rahman Khan (instead
  of the template's instructor placeholder).
- Rewrote the front-matter abstract so it describes this as your group's
  ongoing SSW 590 report rather than leftover DevOps-template instructions.
- Document History: added a new top entry dated September 28, 2026 with
  author initials DMG (Deanna Gaber) and RRK (Rifat Rahman Khan), describing
  this trim-down. Removed the trailing italicized placeholder row
  ("[date / version] / [initials] / ..."). The four older template-history
  rows are kept for the record (per the chapter's own "retain every approved
  entry" rule), but their "Changed At" column now reads as plain text
  instead of broken links, since the chapters they pointed to no longer
  exist in this build.
- Linux Commands chapter, Team Contributions table: updated to say Rifat
  Rahman Khan (RRK) ran the environment-setup and problem-set commands on
  his machine and captured the terminal evidence, and Deanna Gaber (DMG)
  reviewed/verified the answers and compiled the Overleaf report.

Steps in Overleaf
------------------
Option A -- update your existing group project (recommended, keeps your
project's history/comments):
1. Open your group's Overleaf project.
2. For each of the 5 .tex files above (devopsAssignment.tex, prologue.tex,
   devopsDocumentHistory.tex, abstract.tex, devopsLinuxCommands.tex), open
   the matching file already in your project and replace its entire
   contents with the version from this zip (or delete the old file and
   upload the new one with the same name). Your project should already have
   cornell.cls, IEEEtran.bst, and devopsReferences.bib from the original
   template zip -- you do not need to re-upload those if they're already
   there.
3. Recompile (green "Recompile" button). You should get a clean build with
   no undefined-reference warnings. If Overleaf caches an old .aux/.idx from
   a previous build, use Menu -> "Clear cached files" and recompile twice if
   you see any leftover "??" references.
4. Fill in the remaining bracketed placeholders in devopsAssignment.tex as
   your course requires: \Instructor, \DocumentDate, \DueDate.

Option B -- start a brand-new Overleaf project from this zip:
1. In Overleaf, "New Project" -> "Upload Project" and upload this whole zip
   directly. All 8 files it needs (including cornell.cls and IEEEtran.bst)
   are included, so it will compile immediately.
2. Set the compiler to pdfLaTeX if Overleaf doesn't detect it automatically
   (Menu -> Compiler).
3. Fill in the remaining bracketed placeholders as in step 4 above.

A note on the AI Prompt Log
-----------------------------
The AI Prompt Log appendix is no longer part of the compiled PDF (it was
removed along with the other appendices), but your template's own Academic
Integrity guidance still asks you to record material AI assistance
somewhere. AIPromptLog_entry.txt has a drafted entry you can keep in your
own notes, or paste into devopsAIPromptLog.tex in the project (even though
that file is no longer \include'd in the PDF) as a private record for your
group.

This revision was test-compiled locally with pdflatex + makeindex against
your project's cornell.cls to confirm it builds cleanly (22 pages, no
undefined references) before delivery.
