SELECT
  month_num,
  month,
  member_casual,
  COUNT(*) AS total_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
GROUP BY
  month_num,
  month,
  member_casual
ORDER BY
  month_num,
  member_casual;
