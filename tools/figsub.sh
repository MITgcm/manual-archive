#!/bin/csh -f

# Create temporary work directory
\rm -fr figsub
mkdir figsub

# Find "to be replaced" figures, recording html for replacement,
# file to modify and line numbers.
awk -f ../tools/figsub.awk node*.html

# Separate caption, figure image, label and figure number
../tools/caption.sh
../tools/img.sh
../tools/labels.sh
../tools/fignum.sh

# Now find the figures for each extract and make the substitution
../tools/figchange.sh
