# DAX BASIC FUNCTIONS:

- SUM FUNCTION
	SUM_FUNCTION = SUM(airline_passenger_satisfaction[Cleanliness])

- AVERAGE FUNCTION.
	AVG_FUNCTION = AVERAGE(airline_passenger_satisfaction[Baggage Handling])

- MIN/MAX FUNCTION.
	- MIN
	MIN_FUCNTION = MIN(airline_passenger_satisfaction[Departure Delay])

	- MAX
	MAX_FUNCTION = MAX(airline_passenger_satisfaction[Departure Delay])

- COUNT FUNCTION.
	COUNT = COUNT(airline_passenger_satisfaction[Baggage Handling])

	- COUNTBLANK FUNCTION.
		COUNTBLANK(airline_passenger_satisfaction[Baggage Handling])

	- COUNTROWS FUNCTION.
		COUNTROWS(airline_passenger_satisfaction)

	- COUNTAX FUNCTION.
		DAX_FUNCTION = COUNTAX(airline_passenger_satisfaction, [Age] == 0)

	- COUNTX FUNCTION.
		DAX_FUNCTION = COUNTX(airline_passenger_satisfaction, [Age])

	- DISTINCTCOUNT/DISTINTCOUNTNOBLANK
		DISTINCTCOUNT_FUNCTION = DISTINCTCOUNTNOBLANK(airline_passenger_satisfaction[Arrival Delay])

- PRODUCT
	PRODUCT_FUNCTION = PRODUCT([Baggage Handling])

	- PRODUCTX FUNCTION 
		PRODUCTX_FUNCTION = PRODUCTX(airline_passenger_satisfaction, 1+[Baggage Handling])

- ROUNDING FUNCTION.
	- FLOOR FUNCTION.
		FLOOR_FUNCTION = FLOOR(450.5597845579, 5)

	- TRUNC FUNCTION.
		TRUNC_FUNCTION = TRUNC(450.5597845579, 5)

	- ROUND FUNCTION.

		- ROUND.
			ROUND(450.5597845579, 5)

		- ROUNDDOWN.
			ROUNDDOWN(450.5597845579, 2)

		- MROUN.
			MROUND(450.5597845579, 2)

	- FIXED.
		FIXED(450.5597845579,3, "no_commas")

	- CEILING.
		CEILING(450.5597845579,3, 4)

	- INT
		INT(450.5597845579)