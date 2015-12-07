Feature: Delete a movie from the database
 
  As an avid moviegoer
  So that I can contribute to RottenPotatoes
  I want to delete bogus or incorrect movies from the database

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |

Scenario: Remove a movie from the database
  Given I am on the home page
  When I follow "More about Star Wars"
  Then I should be on the details page for "Star Wars"
  When I press "Delete"
  Then I should be on the home page
  And I should see "Movie 'Star Wars' deleted."
