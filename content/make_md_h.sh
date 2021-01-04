
rm  Journal_2020.md

## Trying a way to make this document more accessible by making navigation more hierarchical.

pandoc 2020-01-*.md --toc --toc-depth=2 -o Journal_2020-01.md -s

pandoc 2020-02-*.md --toc --toc-depth=2 -o Journal_2020-02.md -s

pandoc 2020-03-*.md --toc --toc-depth=2 -o Journal_2020-03.md -s

pandoc 2020-04-*.md --toc --toc-depth=2 -o Journal_2020-04.md -s

pandoc 2020-05-*.md --toc --toc-depth=2 -o Journal_2020-05.md -s

pandoc 2020-06-*.md --toc --toc-depth=2 -o Journal_2020-06.md -s

pandoc 2020-07-*.md --toc --toc-depth=2 -o Journal_2020-07.md -s

pandoc 2020-08-*.md --toc --toc-depth=2 -o Journal_2020-08.md -s

pandoc 2020-09-*.md --toc --toc-depth=2 -o Journal_2020-09.md -s

pandoc 2020-10-*.md --toc --toc-depth=2 -o Journal_2020-10.md -s

pandoc 2020-11-*.md --toc --toc-depth=2 -o Journal_2020-11.md -s

pandoc 2020-12-*.md --toc --toc-depth=2 -o Journal_2020-12.md -s

pandoc a0*.md --toc --toc-depth=2 -o Journal_2020-appendixes.md -s

pandoc 01_title.md \
 2020-01.md Journal_2020-01.md \
 2020-02.md Journal_2020-02.md \
 2020-03.md Journal_2020-03.md \
 2020-04.md Journal_2020-04.md \
 2020-05.md Journal_2020-05.md \
 2020-06.md Journal_2020-06.md \
 2020-07.md Journal_2020-07.md \
 2020-08.md Journal_2020-08.md \
 2020-09.md Journal_2020-09.md \
 2020-10.md Journal_2020-10.md \
 2020-11.md Journal_2020-11.md \
 2020-12.md Journal_2020-12.md \
 appendixes.md Journal_2020-appendixes.md \
 bibliography.md \
 --filter pandoc-citeproc \
 --toc --toc-depth=1 \
 -o Journal_2020.md \
 -t gfm \
 -s

## Clean up.
rm Journal_2020-*.md 
 
#pandoc *.md --filter pandoc-citeproc --toc --toc-depth=2 -o Journal_2020.md -t gfm -s

#pandoc Journal_2020.md --css style.css --metadata title="Work Journal 2020" -o compiled/Journal_2020.epub

pandoc Journal_2020.md --css style.css --metadata-file=01_title.yaml --epub-cover-image=cover.jpg -o compiled/Journal_2020.epub

#pandoc 01_title.yaml Journal_2020.md -o compiled/Journal_2020.docx

#pandoc Journal_2020.md -o compiled/Journal_2020.pdf
