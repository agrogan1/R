# put the book together with it's cover

library(rmarkdown)

render("introduction-to-R-COVER.Rmd") # render cover

render("introduction-to-R.Rmd", # render book
       output_format = tintPdf()) # as tintPdf

library(pdftools)

pdf_combine(c("introduction-to-R-COVER.pdf", 
              "introduction-to-R.pdf"), 
            output = "introduction-to-R-with-COVER.pdf")


file.rename("introduction-to-R-with-COVER.pdf",
            "introduction-to-R.pdf")