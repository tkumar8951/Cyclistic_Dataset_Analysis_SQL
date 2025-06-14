--Analyse Phase--

-- Riders by members and casual users --

USE Cyclistic_Bike_Share;
GO

SELECT
    member_casual,
    COUNT(ride_id) AS no_of_rides
FROM dbo.Cyclistic_bike
GROUP BY member_casual;

-- ridable_type by members and casual users --

select
member_casual,
rideable_type,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
rideable_type
order by
no_of_riders desc;

-- Mostly used start station by members and casual riders --
select top 10
start_station_name,
member_casual,
COUNT(ride_id) AS no_of_riders
from dbo.Cyclistic_bike
group by
start_station_name,
member_casual
order by
no_of_riders desc;

-- Mostly used start station by members and casual riders --
select top 10
end_station_name,
member_casual,
COUNT(ride_id) AS no_of_riders
from dbo.Cyclistic_bike
group by
end_station_name,
member_casual
order by
no_of_riders desc;

-- Started time analysis by member and casual riders --

--Monthly analysis --
select
member_casual,
DATEPART(MONTH, started_at) as started_month,
--DATEPART(WEEKDAY, started_at) as started_day,
--DATEPART(HOUR, started_at) as started_hour,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
DATEPART(MONTH, started_at)
order by
no_of_riders desc;

--Daily Analysis--
select
member_casual,
--DATEPART(MONTH, started_at) as started_month,
DATEPART(WEEKDAY, started_at) as started_day,
--DATEPART(HOUR, started_at) as started_hour,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
DATEPART(WEEKDAY, started_at)
order by
no_of_riders desc;

--Hourly analysis --
select
member_casual,
--DATEPART(MONTH, started_at) as started_month,
--DATEPART(WEEKDAY, started_at) as started_day,
DATEPART(HOUR, started_at) as started_hour,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
DATEPART(HOUR, started_at)
order by
no_of_riders desc;

-- Ended time analysis by member and casual riders --

--Monthly analysis --
select
member_casual,
DATEPART(MONTH, ended_at) as ended_month,
--DATEPART(WEEKDAY, started_at) as started_day,
--DATEPART(HOUR, started_at) as started_hour,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
DATEPART(MONTH, ended_at)
order by
no_of_riders desc;

--Daily Analysis--
select
member_casual,
--DATEPART(MONTH, started_at) as started_month,
DATEPART(WEEKDAY, ended_at) as ended_day,
--DATEPART(HOUR, started_at) as started_hour,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
DATEPART(WEEKDAY, ended_at)
order by
no_of_riders desc;

--Hourly analysis --
select
member_casual,
--DATEPART(MONTH, started_at) as started_month,
--DATEPART(WEEKDAY, started_at) as started_day,
DATEPART(HOUR, ended_at) as ended_hour,
COUNT(ride_id) as no_of_riders
from dbo.Cyclistic_bike
group by
member_casual,
DATEPART(HOUR, ended_at)
order by
no_of_riders desc;









