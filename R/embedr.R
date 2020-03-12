embed_audio <- function(src, type = "audio/mpeg", attribute = "controls",
                        unsupported = "") {
  
  if (knitr::is_html_output()) {
    sprintf("<audio %3$s>
               <source src='%1$s' type='%2$s'>
            </audio>", src, type, attribute)
  } else print(unsupported)
  
}