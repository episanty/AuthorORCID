
#!/bin/bash

### This shell script produces a png version of the package pdf file.

pdftoppm build/ORCIDinREVTeX.pdf ORCIDinREVTeX-tmp -png -f 1 -l 1 -singlefile

convert -border 1 -bordercolor black ORCIDinREVTeX-tmp.png ORCIDinREVTeX.png 

rm ORCIDinREVTeX-tmp.png

echo "done"
