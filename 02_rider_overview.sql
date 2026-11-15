SELECT
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(),
    2
  ) AS percentage_of_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
GROUP BY
  member_casual
ORDER BY
  member_casual;
