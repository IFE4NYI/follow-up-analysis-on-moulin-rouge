use AdventureWorksLT2022

select * from [SalesLT].[Product]

select * from [dbo].[FactSurveyResponse]
order by EnglishProductSubcategoryName

select * from [dbo].[FactAdditionalInternationalProductDescription]
where CultureName like'%cana%'

use [ifeanyi new datadabase ]

select * from [dbo].['transaction-report01_03_2025 - $']

create view trans_r as
select clerk_id, clerk_name, category, increment_id, payment_method, 
amount_paid, order_date
from [dbo].['transaction-report01_03_2025 - $']

select distinct amount_ordered, amount_paid
from[dbo].['transaction-report01_03_2025 - $']

alter table [dbo].['transaction-report01_03_2025 - $']
add Category varchar(50)

select * from trans_r
order by Category

select distinct category, clerk_name  from trans_r

update trans_r
set Category =
case 
 when clerk_name = 'Tobiloba Ajala' then 'PRESENT'
 when clerk_name = 'Victoria Otu' then 'PRESENT'
 when clerk_name = 'X Ifeanyi' then 'PRESENT'
 when clerk_name = 'Amara Ifeacho' then 'PRESENT'
 when clerk_name = 'Ore Anna' then 'PRESENT'
 when clerk_name = 'Young Blessing' then 'PRESENT'
 when clerk_name = 'Ezema Favour' then 'PRESENT'
 when clerk_name = 'Josephine Oyibo' then 'PRESENT'
 when clerk_name = 'Mary chioma' then 'PRESENT'
else 'PAST'
end;

select sum (amount_paid)
from trans_r

select * from trans_r
where amount_paid = 2904700

create view trans_report as
select distinct clerk_id, clerk_name, category, increment_id, payment_method, 
amount_paid, order_date
from trans_r

select distinct increment_id from trans_r

select * from trans_report
where clerk_name = 'Tobiloba Ajala'

select * from trans_report
where clerk_name = 'Victoria Otu'

select sum (amount_paid) from trans_report
where clerk_name = 'Tobiloba Ajala'

select distinct clerk_name from trans_report