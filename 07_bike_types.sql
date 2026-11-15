SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS total_rides,
  ROUND(
    COUNT(*) * 100.0 /
    SUM(COUNT(*)) OVER (PARTITION BY member_casual),
    2
  ) AS percentage_of_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
GROUP BY
  member_casual,
  rideable_type
ORDER BY
  member_casual,
  rideable_type
