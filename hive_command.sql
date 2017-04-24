SELECT
p.*,
g.*,
c.*
FROM p1 p
JOIN geo_cleaned g
ON concat(p.filedid,'-',p.stusab,'-',p.chariter,'-',p.cifsn,'-',p.logrecno) = concat(g.filedid,'-',g.stusab,'-',g.chariter,'-',g.cifsn,'-',g.logrecno)
JOIN dist_county_map c
on UPPER(g.location_name) = UPPER(c.county)
WHERE
UPPER(g.location_name) LIKE '%COUNTY'
and UPPER(g.location_name) NOT LIKE '%(PART)%';