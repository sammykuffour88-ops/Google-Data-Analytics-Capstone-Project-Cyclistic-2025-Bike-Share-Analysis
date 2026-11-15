CREATE OR REPLACE TABLE
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_cleaned` AS

SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, MICROSECOND) / 60000000.0
    AS ride_length_minutes,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week_num,
  FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,
  EXTRACT(MONTH FROM started_at) AS month_num,
  FORMAT_TIMESTAMP('%B', started_at) AS month,
  EXTRACT(HOUR FROM started_at) AS start_hour

FROM
  `canvas-pathway-508312-j7.cyclistic_2025.cyclistic_2025_all_final`

WHERE
  ended_at > started_at
