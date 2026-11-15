SELECT
  member_casual,
  CASE
    WHEN day_of_week_num IN (1, 7) THEN 'Weekend'
    ELSE 'Weekday'
  END AS day_type,
  COUNT(*) AS total_rides
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
GROUP BY
  member_casual,
  day_type
ORDER BY
  member_casual,
  day_type;
