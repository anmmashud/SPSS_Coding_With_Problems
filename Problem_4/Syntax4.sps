* Encoding: UTF-8.
*Way 1 : Use one of the 2 ways 

RECODE Income (Lowest thru 10000 = 1) 
       (10001 thru 12000 = 2) 
       (12001 thru 15000 = 3) 
       (15001 thru 17000 = 4) 
       (17001 thru 17500 = 5) 
       INTO Social_Status.
EXECUTE.

* Way 2 : Both are working

RECODE Income (Lowest thru 10000=1) (10001 thru 12000=2) (12001 thru 15000=3) (15001 thru 17000=4) 
    (17001 thru 17500=5) INTO Social. 
VARIABLE LABELS  Social 'test'. 
EXECUTE.
