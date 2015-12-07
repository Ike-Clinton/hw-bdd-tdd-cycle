Feature: Create a movie to add to the database
 
  As an avid moviegoer
  So that I can contribute to RottenPotatoes
  I want to add movies to the list of movies on the site

Scenario: Add a movie to the database
  Given I am on the home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "How the Grinch Stole Christmas" for "Title"
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "How the Grinch Stole Christmas"
