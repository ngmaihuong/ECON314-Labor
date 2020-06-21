/*
Author: Nguyen, Sierra
ECON 314: Economics of Labor
Date created: 12/05/2019
Date updated: 6/21/2020
*/

clear
set more off
capture log close

ssc install outreg2

log using "Command-Files/Analysis.log", replace

//CALIFORNIA 

//2012
use "Analysis-Data/censusCA2012.dta"

codebook, compact
reg comm skimm, r
outreg2 using Output/ca12.xls, replace
reg comm skimm yoep, r
outreg2 using Output/ca12.xls, append
reg comm skimm yoep agep, r
outreg2 using Output/ca12.xls, append

//2017
clear
set more off

use "Analysis-Data/censusCA2017.dta"

codebook, compact
reg comm skimm, r
outreg2 using Output/ca17.xls, replace
reg comm skimm yoep, r
outreg2 using Output/ca17.xls, append
reg comm skimm yoep agep, r
outreg2 using Output/ca17.xls, append

//NEW YORK

//2012
clear
set more off

use "Analysis-Data/censusNY2012.dta"

codebook, compact
reg comm skimm, r
outreg2 using Output/ny12.xls, replace
reg comm skimm yoep, r
outreg2 using Output/ny12.xls, append
reg comm skimm yoep agep, r
outreg2 using Output/ny12.xls, append

//2017
clear
set more off

use "Analysis-Data/censusNY2017.dta"

codebook, compact
reg comm skimm, r
outreg2 using Output/ny17.xls, replace
reg comm skimm yoep, r
outreg2 using Output/ny17.xls, append
reg comm skimm yoep agep, r
outreg2 using Output/ny17.xls, append

log close
exit
