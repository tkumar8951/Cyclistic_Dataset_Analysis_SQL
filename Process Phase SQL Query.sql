--Process Phase--

--Identify and Remove Null Values--
select *
from dbo.Cyclistic_bike
where
ride_id is null
or rideable_type is null
or start_station_name is null
or started_at is null
or ended_at is null
or end_station_name is null
or member_casual is null;

delete from dbo.Cyclistic_bike
where
ride_id is null
or rideable_type is null
or start_station_name is null
or started_at is null
or ended_at is null
or end_station_name is null
or member_casual is null;

-- Identify and remove duplicate values --
select *,
count(*) as duplicatecount
from Cyclistic_bike
group by
ride_id,
rideable_type,
started_at,
ended_at,
started_at,
start_station_name,
end_station_name,
member_casual
having COUNT(*) >1;


