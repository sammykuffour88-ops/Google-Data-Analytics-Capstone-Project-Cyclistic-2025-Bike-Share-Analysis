SELECT
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_length_minutes), 2) AS avg_ride_length_minutes,
  ROUND(APPROX_QUANTILES(ride_length_minutes, 100)[OFFSET(50)], 2)
    AS median_ride_length_minutes
FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned`
GROUP BY
  member_casual
ORDER BY
  member_casual;
