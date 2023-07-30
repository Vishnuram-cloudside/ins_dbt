{{config(materialized='incremental',
	 unique_key = 'id')}}

with details as (
select * from {{ref("join")}}
{% if is_incremental() %}
where date_of_joining >= (select max(date_of_joining) from {{this}})
{% endif %}
)

select * from details
