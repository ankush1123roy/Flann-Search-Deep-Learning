FILE(REMOVE_RECURSE
  "CMakeFiles/pdf"
  "../LatexOut/manual.pdf"
  "../LatexOut/images/cmake-gui.png"
  "../LatexOut/manual.tex"
  "../LatexOut/references.bib"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/pdf.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
