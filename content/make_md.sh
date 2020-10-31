
rm  Journal_2020.md

pandoc *.md --filter pandoc-citeproc --toc --toc-depth=2 -o Journal_2020.md -t gfm -s

pandoc Journal_2020.md --css style.css --metadata title="Journal 2020" -o compiled/Journal_2020.epub

pandoc 01_title.yaml Journal_2020.md -o compiled/Journal_2020.docx

# pandoc Journal_2020.md -o compiled/Journal_2020.pdf
