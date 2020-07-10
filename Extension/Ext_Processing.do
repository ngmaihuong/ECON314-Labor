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
cd "/Users/Boo Boo/Downloads/ECON 314/econ314-labor-fa19su20/Extension"

log using "Ext_Processing.log", replace

*******************CALIFORNIA*******************

//Importing Data
import delimited "/Volumes/DATA 2/ECON 314 Data/CA/CA_2000_2017.csv", numericcols(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) encoding(ISO-8859-1)


//Labeling Variables
label variable agep "Age"
label variable cit "Citizenship status"
label variable schl "Educational attainment"
label variable sex "Sex"
label variable wagp "Wages or salary income past 12 months"
label variable yoep "Year of entry"
label variable nativity "Nativity"
label variable occp "Occupation recode for 2018 and later based on 2018 OCC codes"
label variable powsp "Place of work - State or foreign country recode"
label variable pap "Public assistance income past 12 months"
label variable pincp "Total person's income"
label variable oip "All other income past 12 months"
label variable retp "Retirement income past 12 months"
label variable ssip "Supplementary Security income past 12 months"
label variable ssp "Social Security income past 12 months"
label variable wkhp "Usual hours worked per week past 12 months"
label variable pernp "Total person's earnings"
label variable waob "World area of birth"
label variable decade "Decade of entry"
label variable adjinc "Adjustment factor for income and earnings dollar amounts"

//Age from 25-54
keep if agep >= 25 & agep <= 54


//Occupations in STEM (excluding technicians, drafters, computer support staff) and the Communications
keep if (occp >= 1005 & occp <= 1540 & occp != . & occp != 1050) | (occp >= 1600 & occp <= 1750) | (occp >= 2001 & occp <= 2920)

//Generate dummy variables for observations working in communicative and interactive occupations
gen comm = 0 if occp >= 1005 & occp <= 1750
replace comm = 1 if occp >= 2001 & occp <= 2920

/*
//Generate dummy variables for observations who are skilled immigrants
gen skimm=0 if cit<=4
replace skimm=1 if cit==5

label variable skimm "=1 if skilled-immigrant, =0 if skilled-native"
label variable comm "=1 if work in interactive and communicative occupations, =0 if STEM"
*/

save CA_data.dta, replace

clear
set more off

*******************NEW YORK*******************

//Importing Data
import delimited "/Volumes/DATA 2/ECON 314 Data/NY/NY_2000_2017.csv", numericcols(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) encoding(ISO-8859-1)

//Labeling Variables
label variable agep "Age"
label variable cit "Citizenship status"
label variable schl "Educational attainment"
label variable sex "Sex"
label variable wagp "Wages or salary income past 12 months"
label variable yoep "Year of entry"
label variable nativity "Nativity"
label variable occp "Occupation recode for 2018 and later based on 2018 OCC codes"
label variable powsp "Place of work - State or foreign country recode"
label variable pap "Public assistance income past 12 months"
label variable pincp "Total person's income"
label variable oip "All other income past 12 months"
label variable retp "Retirement income past 12 months"
label variable ssip "Supplementary Security income past 12 months"
label variable ssp "Social Security income past 12 months"
label variable wkhp "Usual hours worked per week past 12 months"
label variable pernp "Total person's earnings"
label variable waob "World area of birth"
label variable decade "Decade of entry"
label variable adjinc "Adjustment factor for income and earnings dollar amounts"

//Age from 25-54
keep if agep >= 25 & agep <= 54


//Occupations in STEM (excluding technicians, drafters, computer support staff) and the Communications
keep if (occp >= 1005 & occp <= 1540 & occp != . & occp != 1050) | (occp >= 1600 & occp <= 1750) | (occp >= 2001 & occp <= 2920)

//Generate dummy variables for observations working in communicative and interactive occupations
gen comm = 0 if occp >= 1005 & occp <= 1750
replace comm = 1 if occp >= 2001 & occp <= 2920

/*
//Generate dummy variables for observations who are skilled immigrants
gen skimm=0 if cit<=4
replace skimm=1 if cit==5

label variable skimm "=1 if skilled-immigrant, =0 if skilled-native"
label variable comm "=1 if work in interactive and communicative occupations, =0 if STEM"
*/

save NY_data.dta, replace

clear
set more off

log close
exit
