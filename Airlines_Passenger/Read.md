# Airline Passenger Satisfaction.

### Dataset Source.

The data set was downloaded from [Maven Analytics](https://www.mavenanalytics.io/data-playground). This this dataset 
their are many data as open to carry out data science related project. And anyone interested to do Data Science, 
Data Analysis project can download it, carry out the self project.

### Motive

Customer satisfaction scores from `120,000+` airline passengers, including additional information about each passenger,
their fight and type of travel as well as there evaluation of different factors like cleanliness, comfort, service and 
overall experience. 

A Survey was conducted whether the passenger were satisfied with the various service provided by the Airlines Company.
This survey was carried out using 24 attributes and 1 as customer satisfied or not. And the survey attribute are as follows:

1. ID
2. Gender
3. Age
4. Customer
5. Type of travel
6. Class
7. Flight Distance 
8. Departure Delay
9. Arrival Delay
10. Departure and Arrival Time Convenience
11. Ease of Online Booking
12. Check-in Service
13. Online Boarding
14. Gate Location
15. On-board Service
17. Seat Comfort
18. Leg Room Service
19. Cleanliness
20. Food and Drink
21. In-flight Service
22. In-flight Wifi Service
23. In-flight Entertaiment
24. Gaggage Handling

`Result: `
Satisfaction Rating: `Satisfies` or `Neutral or Dissatisfied`

 ### Recommended Analysis

 This were the hint provided by the data source website. This points was provided as customer requirement and 
 also the data science beginner will get some direction, in which way the should carry there data project analysis.

1. Which Percentage of airline passengers are satisfied? Does it vary by customer type? What about type of travel?
2. What is the customer profile for a repeating airline passenger?
3. Does flight distance affect customer preferences or flight patterns?
4. Which factors contribution to customer satisfaction the most? What about dissatisfaction?

### Way to Share your solution.

Share your visualization graphic about percentage of satisfied customer, which factor contribute give 
satisfaction to maximum number of passenger using tools like Python, Power BI & Tableau etc.

![The image](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/AirLines_Passenger_satisfaction.PNG)

# Solution:

### Data Correction.
To get the insight from the data, we need to first prepare the data in well structure pattern, like cleaning, 
filling missing value, correcting the improper place data with data manipulation.

### Creating new attributes.
Some attribute are very use full, but utilizing them directly wiil create unnessary complex struture of data
visualuzation. So in order to avoid them we need to create new attribute from exsisting attribute. Line Age attribute 
is continous data attribute. So we converted them to categorical attribute.
Eg. age_num = [7, 9, 10, 15, 20, 23, 25, 30, 28, 35, 40, 45]
	Age_cat = [7-18, 18-24, 25-34, 35-44]

This conversio of numerical data attribute to categorical attribute is done as the formal prcedure carried out while
any survey whether online or offline.

### Finding solution by following the hint provided in `Recommended Analysis` above points.

#### 1. Which Percentage of airline passengers are satisfied? Does it vary by customer type? What about type of travel?

- When data are organise in the graphical manner the passenger `Personal` `Type of Travel` were most dissatified rating to 
airline service compare to Business Type Passenger.
	- Amongs Personal Type of travel the age category of 45 to 90 has given lower rating the Onboarding and inflight Servie as 
	  Their expectation may not have full-filled.

![Image_1](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/Air_Lines-4.PNG)

- So the Business type of Passenger Traveler are most satifies
- There are more percentage of Retuning Customer amongs the Type of Travel i.e Personal one.

#### 2. What is the customer profile for a repeating airline passenger?

- Amongs all passengers the most number of passenger who travel were the Personal Type of Traveller.
- Speaking about the Class of Passenger, then Amongs Business class 85% of Customer type were Returning and 15% were First time. 
  While in Economy Plus and Economy Class 78% Passenger were Returning 

![Image_2](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Air_Lines-8.PNG)


#### 3. Does flight distance affect customer preferences or flight patterns?

- The Average Long Distance Flight were 1190 Units.
	- Business class Passengers prefer Long Distance whether it is Personal or Business type of Passenger and that was range from Average of 1.71K unit for Business type Passengers and Avg. of 826.8 Units for Personal Type of Passengers.

![Flight dist_for_Business_class_personal_Type_Passenger](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Air_Lines-8.PNG)

![Flight dist_for_Business_class_Business_Type_Passenger](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Air_Lines-9.PNG)

	- But when we see at the Economy Class and Economy Plus Class the fligt distance fall for Personal or Business Type of Customer. That was range 
	  from Average of 687.42 unit for Business type Passengers and Avg. of 790.33 Units for Personal Type of Passengers.

![Flight dist_for_Economy_class_Business_Type_Passenger](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Air_Lines-7.PNG)

![Flight dist_for_Economy_class_Personal_Type_Passenger](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Air_Lines-6.PNG)


#### 4. Which factors contribution to customer satisfaction the most? What about dissatisfaction?

- Looking at just how long distance passenger prefer to travel or which Type of passenger prefer to travel Returning or First time travel.
- We need to go deep into data look what the need to people, what are preference service while onboarding and inflight service the passenger 
  has given maximum points in servey.
- This liking of service differ from generation to generation. 
   Eg.
	- Tennager have given more points on `Entertaiment` and `Food & drinks` survey as compare to Seat Comfort. Like 3.16 to `Entertaiment` points and `3.10` to Seat comfort.  
	- Adult have given more points to `Seat comform` as compare to `Entertaiment` and `Food & Drink`. Like 3.74 to `Seat comfort` and `2.80` to `Food & Drink`

	- While in Onboarding category survey attributes both i.e. Adult and Teenager age have given more points on an average to `Baggage handling` 
	  compare to `Check-in service` and `Gate Location` whether the passenger is either `Type of passenger`.

	- All Age category has given Less rating to `Gate Location` from `2.94` to `2.99`. and for Wifi connection `2.57` to `2.80`.

![Age_cat_vs_inflight](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Age_cat_vs_inflight.PNG)

![Age_cat_vs_onboarding_service](https://github.com/abkedar/Power_bi_visualization/blob/main/Airlines_Passenger/images/Age_cat_vs_onboarding_service.PNG)
