select event_name as event, count(distinct(identity_adid)) as active_user
from testing
where event_name like 'abx%'
group by event_name
order by event_name