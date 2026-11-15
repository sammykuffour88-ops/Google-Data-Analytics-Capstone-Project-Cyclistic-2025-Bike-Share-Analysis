CASUAL
SELECT
  start_station_name,
  COUNT(*) AS total_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
WHERE
  member_casual = 'casual'
  AND start_station_name IS NOT NULL
  AND start_station_name != ''
GROUP BY
  start_station_name
ORDER BY
  total_rides DESC
LIMIT 10;

MEMBERS
SELECT
  start_station_name,
  COUNT(*) AS total_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
WHERE
  member_casual = 'member'
  AND start_station_name IS NOT NULL
  AND start_station_name != ''
GROUP BY
  start_station_name
ORDER BY
  total_rides DESC
LIMIT 10;
