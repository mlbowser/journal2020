
## Generate appendixes in markdown format from csv tables.

library(knitr)

meta <- read.csv("a00_appendix_metadata.csv")

for (this_table in 1:nrow(meta))
 {
 out_file <- paste0("../content/", gsub("\\.csv", ".md", meta$file_name[this_table]))
 
 ## Title
 write(paste("\n##", meta$title[this_table], "\n"),
  file=out_file,
  append=FALSE
  )
  
 ## Caption
 write(paste(meta$caption[this_table], "\n"),
  file=out_file,
  append=TRUE
  ) 
  
 ## Table
 atable <- read.csv(meta$file_name[this_table], stringsAsFactors=FALSE)
 write(kable(a01, format="markdown"),
  file=out_file,
  append=TRUE
  )
 }

