-- Total Requests
SELECT COUNT(*) AS total_requests
FROM uber_data;

-- Insight: How many trips were completed, cancelled, or no cars were available.
SELECT status, COUNT(*) AS total
FROM uber_data
GROUP BY status;

--Driver Availability Count
SELECT driver_available, COUNT(*) AS total
FROM uber_data
GROUP BY driver_available;

--Requests by pickup point
SELECT pickup_point, COUNT(*) AS total_requests
FROM uber_data
GROUP BY pickup_point
ORDER BY total_requests DESC;

--Hourly Demand distribution
SELECT request_hour, COUNT(*) AS total_requests
FROM uber_data
GROUP BY request_hour
ORDER BY request_hour;

--Time Slot-wise trip requests
SELECT time_slot, COUNT(*) AS total_requests
FROM uber_data
GROUP BY time_slot
ORDER BY total_requests DESC;

--request status by time slot
SELECT time_slot, status, COUNT(*) AS total
FROM uber_data
GROUP BY time_slot, status
ORDER BY time_slot;

--Most active drivers
SELECT driver_id, COUNT(*) AS trips_handled
FROM uber_data
GROUP BY driver_id
ORDER BY trips_handled DESC
LIMIT 10;

--trip completion rate
SELECT 
  status,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM uber_data), 2) AS percent
FROM uber_data
GROUP BY status;

--Driver availability by time slots
SELECT time_slot, driver_available, COUNT(*) AS total
FROM uber_data
GROUP BY time_slot, driver_available
ORDER BY time_slot;

--Pickup point vs status
SELECT pickup_point, status, COUNT(*) AS total
FROM uber_data
GROUP BY pickup_point, status
ORDER BY pickup_point;

--Trips per hour with status breakdown
SELECT request_hour, status, COUNT(*) AS total
FROM uber_data
GROUP BY request_hour, status
ORDER BY request_hour;





