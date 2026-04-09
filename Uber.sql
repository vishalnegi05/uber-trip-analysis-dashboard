-- TOTAL REVENUE

SELECT SUM(fare_amount) AS total_revenue 
FROM trips;

-- TRIPS PER DAY

SELECT trip_date,COUNT(*) AS total_trip
FROM trips 
GROUP BY 1 
ORDER BY 1;

-- PEAK HOURS

SELECT HOUR(trip_time),COUNT(trip_id) AS total_trips
FROM trips 
GROUP BY 1 
Order by 2 DESC;

-- TOP DRIVERS

SELECT d.driver_id,d.driver_name,SUM(t.fare_amount) AS total_trip
FROM drivers d JOIN trips t ON 
d.driver_id = t.driver_id
GROUP BY 1,2 
ORDER BY 3 DESC;

-- AVERAGE FARE PER KILOMETER

SELECT AVG(fare_amount/distance_km) FROM trips;