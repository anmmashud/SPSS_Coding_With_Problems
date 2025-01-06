* Encoding: UTF-8.

*<|[ Column = edu_value ]|>

RECODE Year_Of_SChooling (17=6) (18=7) (Lowest thru 
0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 12=4) (13 
thru 16=5) INTO edu_value. 
EXECUTE.  

*<|[ Column = Education_status ]|>

STRING Education_Status (A20). 
RECODE edu_value (1='Illiterate') (2='Primary') (3='Secondary') (4='Higher Secondary') 
    (5='Graduate') (6='Post Graduate') (7='Higher') INTO Education_Status. 
VARIABLE LABELS  Education_Status 'Education Status'. 
EXECUTE.


FREQUENCIES VARIABLES=Education_Status
  /ORDER=ANALYSIS.

*<|[For Bar Chart  ]|>

GRAPH
 /BAR(GROUPED)=PCT  BY Education_Status.

*<|[For Pie chart ]|>

GRAPH
 /PIE=PCT BY Education_Status.
