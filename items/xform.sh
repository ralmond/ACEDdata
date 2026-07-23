#!/bin/bash
for file in *.xml; do
  xsltproc xform.xsl "$file" >"${file%.xml}.html"
done