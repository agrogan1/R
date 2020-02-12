# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

library(revealjs) # reveal.js

# render home page

render("multi-page-dplyr.Rmd",
       output_format = "all")

# render("multi-page-dplyr.Rmd",
#        output_format = revealjs_presentation(css = "revealjs.css",
#                                              fig_height = 3),
#        output_file = "multi-page-dplyr-revealjs.html")

render("multi-page-dplyr.Rmd",
       output_format = slidy_presentation(highlight = "haddock",
                                          css = "slidy.css",
                                          fig_height = 3),
       output_file = "multi-page-dplyr-slidy.html")
