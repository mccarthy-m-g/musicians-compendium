set.seed(1014)
options(digits = 3)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = TRUE,
  out.width = "70%",
  fig.align = 'center',
  fig.width = 6,
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
)

options(dplyr.print_min = 6, dplyr.print_max = 6)

#------------------------------------------------------------------------------

#
embed_audio <- function(src, type = "audio/mpeg", attribute = "controls",
                        unsupported = "") {

  if (knitr::is_html_output()) {
    sprintf("<audio %3$s>
             <source src='%1$s' type='%2$s'>
          </audio>", src, type, attribute)
  } else print(unsupported)
    
}