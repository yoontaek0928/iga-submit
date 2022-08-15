select date(server_datetime) as date,
count(case when event_name = 'abx:firstopen' then log_id else null end) as abx_firstopen_user,
count(case when event_name = 'abx:login' then log_id else null end) as abx_login_user,
count(case when event_name = 'abx:purchase' then log_id else null end) as abx_purchase_user
from testing
where date(server_datetime) between date('2018-05-27') and date('2018-05-29')
group by date(server_datetime)
order by date(server_datetime)