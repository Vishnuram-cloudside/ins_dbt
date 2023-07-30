{{config(materialized ="ephemeral")}}
SELECT branch_id,branch_name FROM `cloudside-academy.emp_details.branch`
