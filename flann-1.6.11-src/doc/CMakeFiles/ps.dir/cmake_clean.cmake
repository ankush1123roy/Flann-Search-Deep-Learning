FILE(REMOVE_RECURSE
  "CMakeFiles/ps"
  "../LatexOut/manual.ps"
  "../LatexOut/manual.dvi"
  "../LatexOut/images/cmake-gui.eps"
  "../LatexOut/manual.tex"
  "../LatexOut/references.bib"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ps.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
