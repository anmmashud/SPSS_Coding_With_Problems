* Encoding: UTF-8.
-- Q1
 
FREQUENCIES VARIABLES=Social_Status 
  /ORDER=ANALYSIS.


-- Q2

-- For Bar Chart:

GRAPH
 /BAR(SIMPLE)=PCT BY Social_Status.

-- For Pie Chart:

GRAPH
 /PIE=PCT BY Social_Status.

