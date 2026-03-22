-- What is the total challans issued overall?
select sum(totalchallan) from data;

-- Q2A: Total revenue generated
select sum(totalamount) from data;

-- Q2B: Total revenue collected
select sum(disposedamount) from data;

-- Q3️⃣ What is the average daily challan count?
select avg(totalchallan) as daily_challan from data;

-- Q4️⃣   What is the average daily revenue?
select avg(totalamount) from data;

-- What percentage of challans are disposed overall?
select sum( disposedchallan)/sum(totalchallan )*100 from data;

-- On which date was the highest number of challans disposed?
select date,disposedchallan from data order by disposedChallan desc limit 1;

-- On which date was the highest pending amount recorded?
select date,pendingamount from data order by pendingAmount desc limit 1;

-- What is the total number of court cases overall?
select sum(totalcourt) from data;

-- What percentage of court cases are disposed?
select sum(disposedcourt)*100/ sum(totalcourt) from data;

-- Which date had the highest number of court cases?
select date,totalcourt from data order by totalCourt desc limit 1;

-- Show daily disposal rate (%)
select date, (disposedchallan*100)/totalchallan from data;

-- Show daily revenue collection efficiency (%)
select date, (disposedamount*100)/totalamount from data;

-- Identify top 5 dates with highest revenue generated.
select date,totalamount as revenue_generated from data order by totalamount desc limit 5;

-- 🔥 Q14 — Monthly Total Revenue
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(totalAmount) AS monthly_revenue
FROM data
GROUP BY month
ORDER BY month;

-- 🚀 Q15 — Which Weekday Generates Highest Revenue?
SELECT  DATE_FORMAT(date, '%W') AS weekday,
    SUM(totalAmount) AS total_revenue
FROM data
GROUP BY weekday
ORDER BY total_revenue DESC
LIMIT 1;


-- 🚀 Q15 — Which Weekday Generates lowest Revenue?
select date_format(date,'%W') as weekday,sum(totalamount) as totalrevenue from data group by weekday order by totalrevenue asc limit 1;

--  Which weekday has the highest disposal rate (%) overall?
 select date_format(date,'%W') as weekdays , sum(disposedchallan*100/totalchallan)as disposed_percentage from data group by weekdays  order by disposed_percentage limit 1 ;





SELECT 
    DATE_FORMAT(date, '%W') AS weekday,
    SUM(disposedChallan) * 100.0 / SUM(totalChallan) AS disposal_rate
FROM data
GROUP BY weekday
ORDER BY disposal_rate DESC
LIMIT 1;













