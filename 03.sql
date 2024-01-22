--Bài 1
select name
from STUDENTS
where  Marks>75
order by right(name,3),ID
--Bài 2
select user_id,
concat(upper(left(name,1)),lower(substring(name,2))) as name
from Users 
order by user_id
--hoặc
select user_id,
concat(upper(left(name,1)),lower(right(name,length(name)-1))) as name
from Users 
order by user_id
--Bài 3
SELECT manufacturer,
concat('$',ROUND(sum(total_sales)/1000000,0),' ','million') as sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY sum(total_sales) desc, manufacturer
--Bài 4
SELECT 
extract(month from submit_date ) as mth,
 product_id,
round(avg(stars),2) as avg_star
FROM reviews
group by mth,product_id
order by mth, product_id	
--Bài 5
SELECT  sender_id,
count(message_id) as message_count
FROM messages
where extract(month from sent_date) = 8
and extract(year from sent_date) = 2022
GROUP BY sender_id 
ORDER BY message_count DESC
limit 2
--Bài 6
select tweet_id
from Tweets
where length(content) > 15
--Bai 7
  select activity_date as day,
count(distinct(user_id)) as active_users 
from Activity
where activity_date between "2019-06-28" and "2019-07-27"
group by activity_date;
--Bai 8
select 
count(id) as  number_employees 
from employees
where extract(month from joining_date ) between 1 and 7
and extract(year from joining_date )=2022
--Baif 9 
select 
position('a' in first_name)
from worker
where first_name = 'Amitah'
--Baif 10
select 
substring(title,length(winery)+2,4)
from winemag_p2
where country = 'Macedonia'
