ADDING THE TWO BONUS CHAPTERS TO YOUR OVERLEAF PROJECT (nothing existing is replaced)
=====================================================================================

1. Upload these into your project (all new names, nothing overwritten):
   devopsDigitalOceanDocker.tex   (Chapter 3)
   devopsLatexDocker.tex          (Chapter 4)
   figures/                       (3 screenshots)
   latex-docker/                  (Dockerfile, hello.tex, compile.sh - used by \inputminted)
   color-buttons-app/             (Dockerfile + class-based public/index.html - used by \inputminted)

2. In devopsAssignment.tex make three small ADDITIONS:

   a) After \usepackage{makeidx} add:
        \usepackage{float}
        \usepackage{minted}
        \usepackage{chngcntr}
        \counterwithin{listing}{chapter}
        \usepackage{tikz}
        \usetikzlibrary{shapes.multipart,shapes.geometric,arrows.meta,calc}

   b) After your last \include{...} chapter line add:
        \include{devopsDigitalOceanDocker}
        \include{devopsLatexDocker}

   c) (optional) bump \DocumentVersion to 1.7 and set \DocumentDate to October 6, 2026 (title page date).

3. In devopsDocumentHistory.tex paste this row as the FIRST row after \endhead \bottomrule \endlastfoot:

October 6, 2026 / 1.7 & DMG, RRK & Added the Digital Ocean Docker Deployment chapter and the LaTeX Docker chapter. RRK installed and ran everything: created and configured the Digital Ocean Droplet, installed Docker, deployed the Color Buttons App at \url{http://144.126.196.140}, and did the LaTeX Docker section. DMG created the documentation for the report: wrote both chapters, the class-based JavaScript refactor of the website, and the UML class diagram. & \ChapterRef{DigitalOceanDocker}, \ChapterRef{LatexDocker}\\

4. minted needs shell escape: in Overleaf use Menu -> Settings -> Compiler pdfLaTeX
   (minted works automatically on Overleaf). Compile twice for the index/ToC.

Also: the Droplet website must be redeployed with the new index.html (commands are in
Chapter 3, Section "Redeploying the Updated Site") so the live site matches the chapter.
