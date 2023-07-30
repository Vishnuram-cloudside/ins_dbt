{{config(materialized ="ephemeral")}}
SELECT branch_id,name,date_of_joining,id,age FROM `cloudside-academy.emp_details.employee` 
