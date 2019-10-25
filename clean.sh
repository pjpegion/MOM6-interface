#!/bin/csh -f

# script for cleaning MOM6 
# To be called from the top level container repo where
# src/MOM6 src/FMS are the subfolders

echo "Cleaning MOM6" 

rm -rf build exec MOM6_INSTALL 
find . -name '*.o' -o -name '*.mod' -o -name '*.a' | xargs rm -f
rm -f mom6.mk.install
cd ..

echo "...done cleaning MOM6"

