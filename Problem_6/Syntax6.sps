* Encoding: UTF-8.
-- step 1

GRAPH
 /BAR(SIMPLE)=PCT BY Diabetes.

-- step 2

GRAPH
 /BAR(GROUPED)=PCT BY Diabetes BY Smoking_Status.

-- step 3

GRAPH
 /BAR(STACK)=PCT BY Diabetes BY Gender.

-- step 4

CROSSTABS
 /TABLES=Gender BY Diabetes
 /FORMAT=AVALUE TABLES
 /STATISTICS=CHISQ
 /CELLS=COUNT TOTAL
 /COUNT ROUND CELL.
