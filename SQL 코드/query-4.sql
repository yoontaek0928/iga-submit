select campaign as campaign_id, count(distinct(identity_adid)) as active_user from testing_att
where campaign like 'campaign%'
group by campaign
order by campaign