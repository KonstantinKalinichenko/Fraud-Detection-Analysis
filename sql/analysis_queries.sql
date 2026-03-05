-- 1) Calculate the number of unique users per site to identify abnormal user concentration
-- (each site contains 1000 traffic logs)

SELECT site,
       COUNT(DISTINCT userid) AS unique_users
FROM traffic_logs
GROUP BY site
ORDER BY unique_users;


-- 2) Identify IP addresses generating an unusually high number of events on a single site
-- to detect potential automated or suspicious traffic

SELECT site,
       ip,
       COUNT(*) AS events
FROM traffic_logs
GROUP BY site, ip
HAVING COUNT(*) > 40
ORDER BY events DESC;


-- 3) Suspicious IP range investigation
-- Goal: measure activity from the 52.23.63.* IP range across sites
-- after detecting unusually high activity from this subnet

SELECT site, 
COUNT(*) AS match_count
FROM traffic_logs
WHERE host(ip) LIKE '52.23.63.%'
GROUP BY site;


-- 4) Multiple users per IP analysis
-- Goal: identify IP addresses associated with multiple user IDs,
-- which may indicate shared networks, proxy usage, or automated traffic

SELECT site,
       ip,
       COUNT(DISTINCT userid) AS users_per_ip
FROM traffic_logs
GROUP BY site, ip
HAVING COUNT(DISTINCT userid) > 1
ORDER BY users_per_ip DESC;


-- 5) Repeated device fingerprint activity
-- Goal: detect clusters of traffic with identical device
-- characteristics (user agent, device model, IP, hour)
-- which may indicate automated or scripted traffic

SELECT site,
       useragent,
	   devicemodel,
	   ip,
	   hourid,
       COUNT(*) AS events
FROM traffic_logs
GROUP BY site, useragent, devicemodel, ip, hourid
HAVING Count(*) > 10
ORDER BY events DESC
LIMIT 10;
