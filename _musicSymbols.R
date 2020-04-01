# Accidentals -----------------------------------------------------------------

# sharp
s <- if (knitr::is_html_output()) {
  "<span class='music'>&#x266F;</span>"
} else if (knitr::is_latex_output()) {
  "\\sh"
} else {
  "error displaying character"
}

# flat
f <- if (knitr::is_html_output()) {
  "<span class='music'>&#x266D;</span>"
} else if (knitr::is_latex_output()) {
  "\\fl"
} else {
  "error displaying character"
}
