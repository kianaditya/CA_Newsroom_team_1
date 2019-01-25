@javascript
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

    Scenario: Weather info is displayed in navbar (stored in cookie?)
        Given the time is "12:00"
        And I visit the site
        Then a call to the weather api should be made
        And a cookie with weather info should be stored
        # When the time is "12:10"
        # And I click 'Sign up'
        # Then stop
        # # Then there should be no call to the weather api

        # # Then I should see "Weather for: Stockholm"
        # # And I should see "Current Temperature: -3.46"
        # # And I should see "Min Temperature: -6"
        # # And I should see "Max Temperature: -1"
        # # # Then the cookie has the following content
        # # #     """
        # # #     "{\"city\":\"Stockholm\",\"temp\":-3.46,\"min_temp\":-6,\"max_temp\":-1,\"icon\":\"https://cdn.glitch.com/6e8889e5-7a72-48f0-a061-863548450de5%2F50d.png?1499366021771\"}"
        # # #     """
        # When the time is "12:16"
        # And I click 'Sign up'
        # Then stop
        # # And a call to the weather api should be made

