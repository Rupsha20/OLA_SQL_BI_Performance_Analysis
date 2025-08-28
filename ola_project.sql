Create Database Ola1;
Use Ola1;


#1.Retrieve all successfull bookings : 
Create View Successful_Bookings AS 
SELECT * FROM bookings WHERE Booking_Status = 'Success';
Select*From Successful_Bookings; 
 
#2.Find the average ride distance for each vehicle type: 
Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type , AVG(Ride_Distance) From bookings GROUP BY Vehicle_Type ; 
Select * From ride_distance_for_each_vehicle;

#3.Get the total number of canceled rides by customers: 
Create View canceled_rides_by_customers As
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Canceled by Customer';
Select * From canceled_rides_by_customers;

#4.List the top 5 customers who booked highest number of rides: 
Create View Top_5_Customers As 
Select Customer_ID , COUNT(Booking_ID) as total_rides From bookings group by Customer_ID order by total_rides desc limit 5;
Select * From Top_5_Customers;

#5. Get the number of rides canceled rides by drivers due to personal and car-related  issue: 
Create View Canceled_rides_by_drivers As 
Select COUNT(*) From bookings Where Canceled_Rides_by_Driver = 'Personal & Car related issue';
Select * From Canceled_rides_by_drivers;

#6.Find the maximum and minimum driver ratings for prime sedan bookings: 
Create View Max_Min_ratings AS
Select MAX(Driver_Ratings) as max_rating , MIN(Driver_Ratings) as min_rating from bookings WHERE Vehicle_type = 'Prime Sedan';
select * from Max_Min_ratings ;
 
#7.Retrieve all rides where paymenyt was made using UPI: 
Create View Payment_UPI As
Select * From bookings Where Payment_Method = 'UPI';
select * from Payment_UPI ;

#8.Find the average customer rating per vehicle type : 
Create View Cutomer_rating_for_each_vehicle As
SELECT Vehicle_Type , AVG(Customer_Rating) From bookings GROUP BY Vehicle_Type ; 
Select * From Cutomer_rating_for_each_vehicle;
 
#9.Calculate the total booking value of rides completed successfully: 
Create View Total_Successful_Booking_Value AS 
SELECT SUM(Booking_Value) FROM bookings WHERE Booking_Status = 'Success';
Select*From Total_Successful_Booking_Value ; 

#10.List all incomplete rides along with the reasons:
Create View Total_Incomplete_Rides AS 
SELECT Booking_ID ,Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'Yes';
Select*From Total_Incomplete_Rides ; 