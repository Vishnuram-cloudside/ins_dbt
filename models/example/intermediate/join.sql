{{config(materialized ="ephemeral")}}


select a.name,a.id,a.age,b.branch_name,a.date_of_joining
from {{ref("employee")}} a
inner join {{ref("branch")}} b
on a.branch_id = b.branch_id
