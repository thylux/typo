Feature: Merge Articles
  As a blog administrator
  In order to maintain similar topics together
  I want to be able to merge articles from different authors

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Merge articles field is present
    Given I am on the edit article page
    Then I should see "Merge Articles"
    
  Scenario: Successfully merge articles
    Given I am on the edit article page
    When I fill in "merge_with" with "Foobar"
    And I press "Merge"
    Then I should be on the admin content page
    When I go to the articles page
    Then I should see "Foobar"
    When I follow "Show"
    Then I should see "Lorem Ipsum"
    