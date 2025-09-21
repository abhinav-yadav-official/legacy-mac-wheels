#!/usr/bin/env sh

echo "<!DOCTYPE html>\n<html>\n    <body>" > index.html

for file in $(ls *.whl --color=never --hyperlink=never | sort -n)
    do echo "        <a href=\"$file\">$file</a><br>" >> index.html
done

echo "    </body>\n</html>" >> index.html