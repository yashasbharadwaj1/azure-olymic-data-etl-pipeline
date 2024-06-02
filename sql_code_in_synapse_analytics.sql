-- count number of atheletes from each country
select Country,Count(1) as total_atheletes 
from athletes 
group by Country 
order by total_atheletes desc 

-- calculate total medals won by each country 
select Team_Country ,
sum(Gold) Total_Gold,
sum(Silver) Total_Silver,
sum(Bronze) Total_Bronze
from medals 
group by Team_Country 
order by Total_Gold desc


-- calculate average number of entries by gender for each discipline 
select Discipline,
AVG(Female) as Avg_Female,
AVG(Male) as Avg_Male
from entriesgender 
group by Discipline