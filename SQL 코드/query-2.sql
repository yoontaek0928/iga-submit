select date(server_datetime), count(distinct(identity_adid)) as avtive_user, regexp_replace(cast(sum(price) as VARCHAR), '(\d)(?=(\d\d\d)+(?!\d))', '$1,') as total_price from testing
where date(server_datetime) between date('2018-05-27') and date('2018-05-29')
group by date(server_datetime)
order by date(server_datetime)