select att.partner,
count(distinct(case when att.attribution_type = 0 then identity_adid else null end)) as new_install_user,
count(case when testing.event_name = 'abx:firstopen' then identity_adid else null end) as abx_firstopen_user,
count(case when testing.event_name = 'abx:login' then identity_adid else null end) as abx_login_user,
count(case when testing.event_name = 'abx:purchase' then identity_adid else null end) as abx_purchase_user
from testing
left join testing_att as att
using(identity_adid)
where att.partner = '8MCosUQMik2Muvd-MU0lew'
group by att.partner