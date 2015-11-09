Feature:  Featured screen

  @total_featured
  Scenario: Count how many movies are displayed on Featured Screen in total
    Given I land on Featured Screen
    Then Count total movies displayed and print out into console

  @movies_info
  Scenario:  Open first 5 movies and print title, year and rating into console
    Given I land on Featured Screen
    Then Open first 5 movies and print title, year and rating into console

  @highest_rated
  Scenario: Collect first 5 movies rating and print the highest into console
    Given I land on Featured Screen
    Then collect first 5 movies ratings and print the highest one into concole
