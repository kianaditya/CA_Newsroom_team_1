Feature: Weather info is displayed in navbar

    As a user
    In order to see news about the weather conditions
    I would like to see weather information for my location in the navbar


    Scenario: Weather info is displayed in navbar
        Given I visit the site
        Then I should see "Weather for: Stockholm"
        And I should see "Current Temperature: -3.46"
        And I should see "Min Temperature: -6"
        And I should see "Max Temperature: -1"
