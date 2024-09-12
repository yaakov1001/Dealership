--How many cars did we sell and how many cars did we lease?

select count(*) as Amount, 
    case c.isSold when 1 then 'Sold' else 'Leased' end as SoldOrLeased
from Cars c
where c.isSold is not null
group by c.isSold

--Which model earned the most revenue?
select top 1 sum(c.PriceSold - c.PricePurchased) as Revenue, c.Model
from Cars c 
where c.PriceSold is not null
group by c.Model
order by Revenue desc

--For the cars that were sold/leased how long did it take on average for the transaction to occur after it was purchased by the dealership?
select avg(datediff(day,c.DatePurchased, c.DateSold)) as AvgDaysInDealership
from Cars c
where c.DateSold is not null

--Which color had the most sales/leases?
select top 1 c.Color, count(*) as AmountSold
from Cars c
where c.isSold is not null
group by c.Color
order by AmountSold desc