Weather App Test Project


The Test Project is written to be run in Windows typing 

mvn clean test

The test assumes that the web server is up and running and the website can be reached at http://localhost:3000.


The cucumber report are available under "target\cucumber-html-report\index.html".

Feature file is under "src/test/resources/features/".


Considerations:

Given the requirement, it should be noted that it is not intuitive for the user where to enter the city. 
In a normal situation, I would raise a defect for that.

The requirements have been given an id as follows:

- req01 - Enter city name, get 5 day weather forecast
- req02 - Select day, get 3 hourly forecast
- req03 - Select day again, hide 3 hourly forecast
- req04.1 - Daily forecast should summarise the 3 hour data - Most dominant (or current) condition
- req04.2 - Daily forecast should summarise the 3 hour data - Most dominant (or current) wind speed and direction
- req04.3 - Daily forecast should summarise the 3 hour data - Aggregate rainfall
- req04.4 - Daily forecast should summarise the 3 hour data - Minimum and maximum temperatures
- req05 - All values should be rounded down

and the corresponding scenarios have tags that link to the requirement.


Details on anything further that you would like to achieve given more time, including any trade-offs that you may have made

- req02 - I would have like to spend a little more time to add checks on values given the available test data
- req05 - at the moment, the "rounding" check is only implemented for minimum and maximum temperature.
