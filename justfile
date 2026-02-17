default:
  bibtex-tidy *.bib --no-escape --sort -m
  lualatex --interaction=batchmode --draftmode main.tex 
  bib2gls main -g
  biber --quiet main
  lualatex --interaction=batchmode --draftmode main.tex 
  lualatex --interaction=batchmode main.tex
  git commit -am "updt"
  git push
  
