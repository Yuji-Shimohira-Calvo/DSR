****************************************
* Doing Survey Research - UoE          *
* Lab Worksheet II - Stata's Interface *
* Yuji Shimohira-Calvo                 *
****************************************

* INTRODUCTION

/*

https://github.com/Yuji-Shimohira-Calvo/DSR

This dofile creates a small dataset of 10 universities with some information
from 2015 (not sure about the exact year, but it is around 2015).

In Lab Worksheet II students are asked to input these data manually so they
get to know Stata's interface. It is also a good exercise to realise that a
dataset looks pretty much like an "Excel spreadsheet."

This dofile can be used by tutors to demonstrate quickly the final result of
the exercise, but students can also use it  to practice basic commands in Stata. 

*/

clear all

set obs 10

* Name of University
gen str University = "Edinburgh University" in 1
replace University = "Napier University" in 2
replace University = "University of Essex" in 3
replace University = "University of Cambridge" in 4
replace University = "Cardiff University" in 5
replace University = "University of Liverpool" in 6
replace University = "Queen's University Belfast" in 7
replace University = "Glasgow Caledonian" in 8
replace University = "Ulster University" in 9
replace University = "University of Warwick" in 10

lab var University "Name of university"

* Number of students
gen Students = 35258 in 1
replace Students = 17264 in 2
replace Students = 11939 in 3
replace Students = 18271 in 4
replace Students = 30180 in 5
replace Students = 21276 in 6
replace Students = 24955 in 7
replace Students = 18410 in 8
replace Students = 26200 in 9
replace Students = 23420 in 10

lab var Students "Number of students"

* The Guardian Ranking
gen Ranking = 20 in 1
replace Ranking = 64 in 2
replace Ranking = 47 in 3
replace Ranking = 1 in 4
replace Ranking = 27 in 5
replace Ranking = 59 in 6
replace Ranking = 45 in 7
replace Ranking = 89 in 8
replace Ranking = 82 in 9
replace Ranking = 6 in 10

lab var Ranking "The Guardian Ranking position"

* Geographical region of university
gen Location = 1 in 1
replace Location = 1 in 2
replace Location = 4 in 3
replace Location = 4 in 4
replace Location = 3 in 5
replace Location = 4 in 6
replace Location = 2 in 7
replace Location = 1 in 8
replace Location = 2 in 9
replace Location = 4 in 10

lab var Location "Region of university"
lab def locationl 1 "Scotland" 2 "Northern Ireland" 3 "Wales" 4 "England"
lab val Location locationl

* Number of Nobel laureates
gen Nobel = 20 in 1
replace Nobel = 0 in 2
replace Nobel = 2 in 3
replace Nobel = 91 in 4
replace Nobel = 2 in 5
replace Nobel = 9 in 6
replace Nobel = 3 in 7
replace Nobel = 1 in 8
replace Nobel = 0 in 9
replace Nobel = 1 in 10

lab var Nobel "Number of Nobel laureates"

* Gender of Vice-chancellor
gen Vice = 0 in 1
replace Vice = 1 in 2
replace Vice = 0 in 3
replace Vice = 0 in 4
replace Vice = 0 in 5
replace Vice = 1 in 6
replace Vice = 0 in 7
replace Vice = 1 in 8
replace Vice = 0 in 9
replace Vice = 0 in 10

lab var Vice "Gender of Vice-chancellor"
lab def vicel 1 "Female" 0 "Male"
lab val Vice vicel

* Year university was established
gen Year = 1582 in 1
replace Year = 1992 in 2
replace Year = 1965 in 3
replace Year = 1209 in 4
replace Year = 1997 in 5
replace Year = 1903 in 6
replace Year = 1908 in 7
replace Year = 1993 in 8
replace Year = 1982 in 9 
replace Year = 1965 in 10

lab var Year "Year university was established"

ren _all, lower /// All variable names lower case

* THE END

