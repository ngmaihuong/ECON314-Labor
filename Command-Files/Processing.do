/*
Author: Nguyen, Sierra
ECON 314: Economics of Labor
Date created: 12/05/2019
Date updated: 6/21/2020
*/

clear
set more off
capture log close

pwd
cd "~/Downloads/ECON 314"

log using "Command-Files/Processing.log", replace

*******************Census 2012*******************

//CALIFORNIA
import delimited "Original-Data/2012/CA/ss12pca.csv" 

//Keep only variables that are necessary for analysis
keep st agep cit schl sex wagp yoep nativity occp powsp

label variable st "State Code based on 2010 Census definitions"
label variable agep "Age"
label variable cit "Citizenship status"
label variable schl "Educational attainment"
label variable sex "Sex"
label variable wagp "Wages or salary income past 12 months"
label variable yoep "Year of entry"
label variable nativity "Nativity"
label variable occp "Occupation recode for 2018 and later based on 2018 OCC codes"
label variable powsp "Place of work - State or foreign country recode"

//Keep only observations whose education level and occupations are in area of analysis
keep if schl>=22 & schl!=.
keep if occp>=1005&occp<=1560&occp!=.|occp>=2001&occp<=2970&occp!=.

//Generate dummy variables for observations working in communicative and interactive occupations
gen comm=0 if occp>=1005&occp<=1560
replace comm=1 if occp>=2001&occp<=2970

//Generate dummy variables for observations who are skilled immigrants
gen skimm=0 if cit<=4
replace skimm=1 if cit==5

label variable skimm "=1 if skilled-immigrant, =0 if skilled-native"
label variable comm "=1 if work in interactive and communicative occupations, =0 if STEM"

save Analysis-Data/censusCA2012.dta, replace

clear
set more off

//NEW YORK
import delimited "Original-Data/2012/NY/ss12pny.csv"

//Keep only variables that are necessary for analysis
keep st agep cit schl sex wagp yoep nativity occp powsp

label variable st "State Code based on 2010 Census definitions"
label variable agep "Age"
label variable cit "Citizenship status"
label variable schl "Educational attainment"
label variable sex "Sex"
label variable wagp "Wages or salary income past 12 months"
label variable yoep "Year of entry"
label variable nativity "Nativity"
label variable occp "Occupation recode for 2018 and later based on 2018 OCC codes"
label variable powsp "Place of work - State or foreign country recode"

//Keep only observations whose education level and occupations are in area of analysis
keep if schl>=22 & schl!=.
keep if occp>=1005&occp<=1560&occp!=.|occp>=2001&occp<=2970&occp!=.

//Generate dummy variables for observations working in communicative and interactive occupations
gen comm=0 if occp>=1005&occp<=1560
replace comm=1 if occp>=2001&occp<=2970

//Generate dummy variables for observations who are skilled immigrants
gen skimm=0 if cit<=4
replace skimm=1 if cit==5

label variable skimm "=1 if skilled-immigrant, =0 if skilled-native"
label variable comm "=1 if work in interactive and communicative occupations, =0 if STEM"

save Analysis-Data/censusNY2012.dta, replace
clear
set more off

*******************Census 2017*******************

//CALIFORNIA
import delimited "Original-Data/2017/CA/psam_p06.csv"

//Keep only variables that are necessary for analysis
keep st agep cit schl sex wagp yoep nativity occp powsp

label variable st "State Code based on 2010 Census definitions"
label variable agep "Age"
label variable cit "Citizenship status"
label variable schl "Educational attainment"
label variable sex "Sex"
label variable wagp "Wages or salary income past 12 months"
label variable yoep "Year of entry"
label variable nativity "Nativity"
label variable occp "Occupation recode for 2018 and later based on 2018 OCC codes"
label variable powsp "Place of work - State or foreign country recode"

//Keep only observations whose education level and occupations are in area of analysis
keep if schl>=22 & schl!=.
keep if occp>=1005&occp<=1560&occp!=.|occp>=2001&occp<=2970&occp!=.

//Generate dummy variables for observations working in communicative and interactive occupations
gen comm=0 if occp>=1005&occp<=1560
replace comm=1 if occp>=2001&occp<=2970

//Generate dummy variables for observations who are skilled immigrants
gen skimm=0 if cit<=4
replace skimm=1 if cit==5

label variable skimm "=1 if skilled-immigrant, =0 if skilled-native"
label variable comm "=1 if work in interactive and communicative occupations, =0 if STEM"

save Analysis-Data/censusCA2017.dta, replace
clear
set more off

//NEW YORK
import delimited "Original-Data/2017/NY/psam_p36.csv"

//Keep only variables that are necessary for analysis
keep st agep cit schl sex wagp yoep nativity occp powsp

label variable st "State Code based on 2010 Census definitions"
label variable agep "Age"
label variable cit "Citizenship status"
label variable schl "Educational attainment"
label variable sex "Sex"
label variable wagp "Wages or salary income past 12 months"
label variable yoep "Year of entry"
label variable nativity "Nativity"
label variable occp "Occupation recode for 2018 and later based on 2018 OCC codes"
label variable powsp "Place of work - State or foreign country recode"

//Keep only observations whose education level and occupations are in area of analysis
keep if schl>=22 & schl!=.
keep if occp>=1005&occp<=1560&occp!=.|occp>=2001&occp<=2970&occp!=.

//Generate dummy variables for observations working in communicative and interactive occupations
gen comm=0 if occp>=1005&occp<=1560
replace comm=1 if occp>=2001&occp<=2970

//Generate dummy variables for observations who are skilled immigrants
gen skimm=0 if cit<=4
replace skimm=1 if cit==5

label variable skimm "=1 if skilled-immigrant, =0 if skilled-native"
label variable comm "=1 if work in interactive and communicative occupations, =0 if STEM"

save Analysis-Data/censusNY2017.dta, replace

log close
exit
