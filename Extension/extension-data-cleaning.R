#Economics of Labor
#Mai-Huong, Nguyen
#Date created: 07/08/2020
#Date last updated: 07/10/2020

#Opening Tools ----
library(dplyr)

#Unfamiliar Variable Labels ----
#REL didn't exist
#PAP: Public assistance income past 12 months
#PINCP: Total person's income
#OIP: All other income past 12 months
#RETP: Retirement income past 12 months
#SSIP: Supplementary Security Income past 12 months
#SSP: Social Security income past 12 months
#WKHP: Usual hours worked per week past 12 months
#PERNP: Total person's earnings
#WAGP: Wages or salary income past 12 months
#POWSP: Place of work -State or foreign country recode
#WOAB: World area of birth

#Locating Data Source & Importing Data ----

#New York ----
setwd("/Volumes/DATA 2/ECON 314 Data/NY")

df17 <- read.csv('ss17pny.csv', 
                header = TRUE,
                na.strings = "") 
df17 <- select(df17, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df16 <- read.csv('ss16pny.csv', 
                 header = TRUE) 
df16 <- select(df16, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df15 <- read.csv('ss15pny.csv', 
                 header = TRUE) 
df15 <- select(df15, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df14 <- read.csv('ss14pny.csv', 
                 header = TRUE) 
df14 <- select(df14, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df13 <- read.csv('ss13pny.csv', 
                 header = TRUE) 
df13 <- select(df13, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df12 <- read.csv('ss12pny.csv', 
                 header = TRUE) 
df12 <- select(df12, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df11 <- read.csv('ss11pny.csv', 
                 header = TRUE) 
df11 <- select(df11, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df10 <- read.csv('ss10pny.csv', 
                 header = TRUE) 
df10 <- select(df10, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df09 <- read.csv('ss09pny.csv', 
                 header = TRUE) 
df09 <- select(df09, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df08 <- read.csv('ss08pny.csv', 
                 header = TRUE) 
df08 <- select(df08, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJINC, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df07 <- read.csv('ss07pny.csv', 
                 header = TRUE) 
df07 <- select(df07, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJUST, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

#ADJINC -> ADJUST

df06 <- read.csv('ss06pny.csv', 
                 header = TRUE) 
df06 <- select(df06, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJUST, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df05 <- read.csv('ss05pny.csv', 
                 header = TRUE) 
df05 <- select(df05, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP, NATIVITY,
               SEX, SCHL, CIT, ADJUST, POWSP, DECADE,
               WAOB, OCCP, YOEP, AGEP)

df04 <- read.csv('ss04pny.csv', 
                 header = TRUE) 
df04 <- select(df04, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP,
               SEX, SCHL, CIT, ADJUST, POWSP,
               OCCP, YOEP, AGEP)

#No NATIVITY, DECADE, WAOB

df03 <- read.csv('ss03pny.csv', 
                 header = TRUE) 
df03 <- select(df03, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP,
               SEX, SCHL, CIT, ADJUST, POWSP,
               OCCP, YOEP, AGEP)

df02 <- read.csv('ss02pny.csv', 
                 header = TRUE) 
df02 <- select(df02, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP,
               SEX, SCHL, CIT, ADJUST, POWSP,
               OCCP, YOEP, AGEP)

df01 <- read.csv('ss01pny.csv', 
                 header = TRUE) 
df01 <- select(df01, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP,
               SEX, SCHL, CIT, ADJUST, POWSP,
               OCCP, YOEP, AGEP)

df00 <- read.csv('ss00pny.csv', 
                 header = TRUE) 
df00 <- select(df00, PINCP, PAP, OIP, RETP,
               SSIP, SSP, WKHP, PERNP,  WAGP,
               SEX, SCHL, CIT, ADJUST, POWSP,
               OCCP, YOEP, AGEP)

#Creating NA Columns for Merging ----
df04$NATIVITY <- NA
df04$DECADE <- NA
df04$WAOB <- NA

df03$NATIVITY <- NA
df03$DECADE <- NA
df03$WAOB <- NA

df02$NATIVITY <- NA
df02$DECADE <- NA
df02$WAOB <- NA

df01$NATIVITY <- NA
df01$DECADE <- NA
df01$WAOB <- NA

df00$NATIVITY <- NA
df00$DECADE <- NA
df00$WAOB <- NA

#Merging Data Frames ----
dfCA <- bind_rows(df00, df01, df02, df03, df04, df05, 
                  df06, df07, df08, df09, df10, df11, 
                  df12, df13, df14, df15, df16, df17)

#Saving ----
write.csv(dfCA, "CA_2000_2017", row.names = F)
