
#!/bin/bash

### This shell script produces a png version of the package pdf file.

pdftoppm build/authororcid.pdf authororcid-tmp -png -f 1 -l 1 -singlefile

convert -border 1 -bordercolor black authororcid-tmp.png authororcid.png 

rm authororcid-tmp.png

echo "done"
