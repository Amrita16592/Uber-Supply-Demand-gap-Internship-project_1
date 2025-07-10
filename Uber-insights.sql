CREATE TABLE uber_data (
    request_id SERIAL PRIMARY KEY,
    pickup_point VARCHAR(20),
    driver_id INT,
    status VARCHAR(30),
    request_timestamp TIMESTAMP,
    hour TEXT,
    drop_timestamp TIMESTAMP,
	time_slot VARCHAR(30),
    request_hour TEXT,
    trip_completed VARCHAR(10),
    driver_available VARCHAR(10)
);

drop table uber_data;
select*from uber_data;
SELECT COUNT(*) FROM uber_data;
SELECT * FROM uber_data LIMIT 7000;

copy uber_data(Request_id, Pickup_point, Driver_id, Status, Request_timestamp, HOUR, Drop_timestamp, Request_Hour, Time_Slot, Trip_Completed, Driver_Available
)
FROM 'C:\temp\Uber_Cleaned_Data.csv'
DELIMITER','
CSV HEADER;