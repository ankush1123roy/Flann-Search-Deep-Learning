FILE(REMOVE_RECURSE
  "CMakeFiles/dvi"
  "../LatexOut/manual.dvi"
  "../LatexOut/images/cmake-gui.eps"
  "../LatexOut/manual.tex"
  "../LatexOut/references.bib"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/dvi.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
