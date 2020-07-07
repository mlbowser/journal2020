./pandoc *.md --filter pandoc-citeproc --toc --toc-depth=2 -o compiled/Journal_2020.md -t gfm -s

./pandoc compiled/Journal_2020.md --css style.css --metadata title="Journal 2020" -o compiled/Journal_2020.epub
