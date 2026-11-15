SELECT
  start_hour,
  member_casual,
  COUNT(*) AS total_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
GROUP BY
  start_hour,
  member_casual
ORDER BY
  start_hour,
  member_casual;
