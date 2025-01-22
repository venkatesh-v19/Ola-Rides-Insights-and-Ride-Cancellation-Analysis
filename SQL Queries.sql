#1. Retrive all Successfull Bookings
SELECT * FROM olaanalysis.bookings WHERE Booking_Status = "Success";

#2. Find the average ride distance for each vehicle type:
select Vehicle_Type, AVG(Ride_Distance) as avg_distance from bookings group by Vehicle_Type;

#3. Get the total number of cancelled rides by customers:
select count(*) 
from bookings 
where Booking_Status = "Canceled by Customer";

#4. List the top 5 customers who booked the highest number of rides:bookings
select Customer_ID,count(Booking_ID) 
as total_rides 
from bookings 
group by Customer_ID 
order by total_rides 
desc limit 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*)
from bookings
where Booking_Status = "Canceled by Driver";

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(Driver_Ratings) as max_rate, min(Driver_Ratings) as min_rate
from bookings
where Vehicle_Type = "Prime Sedan";

#7. Retrieve all rides where payment was made using UPI:
select * from bookings
where Payment_Method = "UPI";

#8. Find the average customer rating per vehicle type:
select Vehicle_Type, avg(Customer_Rating) from bookings group by Vehicle_Type; 

#9. Calculate the total booking value of rides completed successfully:
select sum(Booking_Value) as total_success
from bookings
where Booking_Status = "Success";

#10. List all incomplete rides along with the reason:
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = "Yes";