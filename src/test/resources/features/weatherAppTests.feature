@weatherApp
Feature: Weather App Page Tests
  The Demo App is tested against the acceptance criteria

@req01
  Scenario: 5 Days Forecast
    Given the user has opened the Weather App
    When the user selects the city of "Aberdeen"
    Then a 5 day forecast is displayed

@req02
  Scenario Outline: 3 Hourly Forecast Shown on Day <day>
    Given the user has opened the Weather App
    And the user selects the city of "Aberdeen"
    When the user clicks on day <day>
    Then a 3 hourly forecast is displayed
    
 Examples:
 	| day |
 	| 1   |
 	| 2   |
 	| 3   |
 	| 4   |
 	| 5   |

@req03 	
  Scenario Outline: 3 Hourly Forecast Closed on Day <day>
    Given the user has opened the Weather App
    And the user selects the city of "Perth"
    And the user clicks on day <day>
    When the user clicks again on day <day>
    Then a 3 hourly forecast is not shown
    
   Examples:
 	| day |
 	| 1   |
 	| 2   |
 	| 3   |
 	| 4   |
 	| 5   |

@req04.1	
  Scenario: Daily Forecast - Current Weather Condition
    Given the user has opened the Weather App
    And the user selects the city of "Stirling"
    And a 5 day forecast is displayed
    When the user clicks on day 1
    Then the daily forecast shows the current Weather condition

@req04.2
  Scenario: Daily Forecast - Wind speed and direction
    Given the user has opened the Weather App
    And the user selects the city of "Glasgow"
    And a 5 day forecast is displayed
    When the user clicks on day 1
    Then the daily forecast shows the current wind speed
    And the daily forecast shows the current wind direction

@req04.3
  Scenario: Daily Forecast - Aggregate rainfall
    Given the user has opened the Weather App
    And the user selects the city of "Glasgow"
    And a 5 day forecast is displayed
    When the user clicks on day 1
    Then the daily forecast shows the aggregate rainfall

@req04.4    
  Scenario: Daily Forecast - Minimum and maximum temperatures
    Given the user has opened the Weather App
    And the user selects the city of "Glasgow"
    And a 5 day forecast is displayed
    When the user clicks on day 1
    Then the daily forecast shows the minimum temperature for the day
    And the daily forecast shows the maximum temperature for the day

@req05    
  Scenario: All values should be rounded down
    Given the user has opened the Weather App
    And the user selects the city of "Stirling"
    When the user clicks on day 1
    Then values displayed are rounded down
