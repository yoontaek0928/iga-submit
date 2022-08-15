select date(server_datetime), count(distinct(identity_adid)) as avtive_user from testing
where date(server_datetime) between date('2018-05-27') and date('2018-05-29')
group by date(server_datetime)
order by date(server_datetime)