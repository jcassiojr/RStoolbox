#!/bin/bash
cd ~/eclipseWorkspace/RStoolbox
git checkout master

echo "\n**********************************************************"
echo "Document and install RStoolbox ***************************"
echo "**********************************************************"
Rscript -e "library(devtools);library(methods); document(); install()"

echo "\n**********************************************************"
echo "Generate example data ************************************"
echo "**********************************************************"
Rscript data-raw/generate_data.R

echo "\n**********************************************************"
echo "Generate sysdata *****************************************"
echo "**********************************************************"
Rscript data-raw/generate_sysdata.R

echo "\n**********************************************************"
echo "R CMD check **********************************************"
echo "**********************************************************"
Rscript -e "library(devtools); library(methods); build_win(); check()"


git checkout gh-pages
#Rscript -e "						
	
#git checkout master									