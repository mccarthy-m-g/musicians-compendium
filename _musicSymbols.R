# Bravura: http://www.smufl.org/files/smufl-0.9.pdf
# musicology: http://ctan.mirror.globo.tech/macros/latex/contrib/musicography/musicography.pdf

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

# Rhythms ---------------------------------------------------------------------

# Dotted Whole Note
whole. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D2; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musWholeDotted"
} else {
  "error displaying character"
}

# Whole Note
whole <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D2;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musWhole"
} else {
  "error displaying character"
}

# Dotted Half Note
half. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D3; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musHalfDotted"
} else {
  "error displaying character"
}

# Half Note
half <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D3;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musHalf"
} else {
  "error displaying character"
}

# Dotted Quarter Note
quarter. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D5; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musQuarterDotted"
} else {
  "error displaying character"
}

# Quarter Note
quarter <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D5;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musQuarter"
} else {
  "error displaying character"
}

# Dotted Eighth Note
eighth. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D7; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musEighthDotted"
} else {
  "error displaying character"
}

# Eighth Note
eighth <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musEighth"
} else {
  "error displaying character"
}

# Dotted Sixteenth Note
sixteenth. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D9; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musSixteenthDotted"
} else {
  "error displaying character"
}

# Sixteenth Note
sixteenth <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1D9;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musSixteenth"
} else {
  "error displaying character"
}

# Dotted Thirty-second Note
thirty_second. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1DB; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musThirtySecondDotted"
} else {
  "error displaying character"
}

# Thirty-second Note
thirty_second <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1DB;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musThirtySecond"
} else {
  "error displaying character"
}

# Dotted Sixty-fourth Note
sixty_fourth. <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1DD; &#xE1E7;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musSixtyFourthDotted"
} else {
  "error displaying character"
}

# Sixty-fourth Note
sixty_fourth <- if (knitr::is_html_output()) {
  "~<span class='music note'>&#xE1DD;</span>~"
} else if (knitr::is_latex_output()) {
  "\\musSixtyFourth"
} else {
  "error displaying character"
}
