set.seed(1014)
options(digits = 3)

###############################################################################
## setup
###############################################################################
library(tidyverse)
library(patchwork)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  echo = FALSE,
  fig.align = "left",
  # fig.width = 6,
  # fig.asp = 0.618,  # 1 / phi
  fig.show = "hold",
  message = FALSE
)

options(dplyr.print_min = 6,
        dplyr.print_max = 6,
        knitr.graphics.auto_pdf = TRUE)

###############################################################################
## functions to embed multimedia
###############################################################################

embed_audio <- function(src, type = "audio/mpeg", attribute = "controls",
                        placeholder = "") {

  if (knitr::is_html_output()) {
    sprintf("<audio %3$s>
             <source src='%1$s' type='%2$s'>
          </audio>", src, type, attribute)
  } else print(placeholder)
    
}

###############################################################################
## functions to control out.width scaling
###############################################################################

# required packages library(tidyverse)

# create function to extract filepaths and metadata for all lilypond PNGs -----
image_dim <- function() {
  # get all files in the lilypond directory that end in .png
  list.files("./lilypond", recursive = TRUE, include.dirs = TRUE) %>%
    tibble::enframe(name = NULL) %>%
    dplyr::select(name = value) %>%
    dplyr::filter(stringr::str_detect(name, ".png")) %>%
    # prepend "lilypond/" to all the file paths
    dplyr::mutate(name = paste0("lilypond/", name)) %>%
    # get the width of each image
    dplyr::mutate(width = unlist(magick::image_info(magick::image_read(name))[2])) %>%
    # get the height of each image
    dplyr::mutate(height = unlist(magick::image_info(magick::image_read(name))[3])) %>%
    dplyr::arrange(dplyr::desc(width))
}

# create function to pull dim value from the output of image_dim() ------------
get_image_dim <- function(df, x, dim = "width", name_col = name) {
  name_col <- enquo(name_col)
  
  df %>%
    dplyr::filter(stringr::str_detect(!!name_col, x)) %>%
    dplyr::select(dim) %>%
    dplyr::pull()
}

# save image filepaths and dimensions to a tibble -----------------------------
image_dims <- image_dim()

# create function that determines the out.width of an image -------------------
out_width <- function(x, df = image_dims, ...) {
  
  # get max image width for music engravings
  max_image_width <- df$width[[1]]
  
  # get input image's width
  input_image_width <- df %>% get_image_dim(x, ...)
  
  # calculate what percent of the max width the current image's width should be
  percent_width <- (input_image_width / max_image_width) * 100
  
  # convert percent_width to a string
  paste0(percent_width, "%")
  
}
