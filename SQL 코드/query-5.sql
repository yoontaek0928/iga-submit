select campaign as campaign_id, count(distinct(event.identity_adid)) as active_user, regexp_replace(cast(sum(price) as VARCHAR), '(\d)(?=(\d\d\d)+(?!\d))', '$1,') as total_price
from testing as event
left join testing_att as att
on event.identity_adid = att.identity_adid
where campaign like 'campaign%'
group by campaign
order by campaign
