WITH BIKE AS
(
    SELECT
    DISTINCT
    START_STATIO_ID AS station_id,
    START_STATION_NAME AS station_name,
    START_LAT AS station_lat,
    START_LNG AS start_station_lng
    FROM {{ source('demo', 'bike') }}
    WHERE RIDE_ID != 'ride_id'
    
)
SELECT
*
FROM BIKE