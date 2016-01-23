Feature: Create Category
  As a blog administrator
  In order to organize my blog
  I want to be able to create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_description" with "Foobar"
    And I press "Save"
    Then I should be on the new category page
    Then the field "category_container" should contain "Foobar"
