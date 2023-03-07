Feature: Demo Nopcommerce's topmenu acceptance criteria
  As a user I would like to check acceptance criteria of Nop commerce topmenu
  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And User click on Enter button
    Then User is on given URL

  Scenario: Varify that user can navigate to Books category
    When User is on given URl
      And Click on books tab on top menu
      Then User navigeted to books category page

  Scenario: Varify that user can see the books category page with filters and list of products
    When User is on given URL
    And  Click on books on top menu
    And Check filters and list tab
Then 'Sort by' filter is available on book category page

Scenario: Verify that user can see 'Display' filter on Book category page
Given User is on book category page
When User is on bookd category page
And Check 'DIsplay' filter is present
Then 'Display' filter is available on book category page

  Scenario: Verify that user can see 'Grid' tab on book Category page
Given User is on Books Category page
When User is on Book Category Page
And Check 'Grid' tab is present
Then 'Grid' tab is available on Book Category page

Scenario: Verify that the user can see 'List' tab on Book Category page
Given User is on Books Category page
When User is on Book category page
And Check 'List' tab is present
Then 'List' tab is available on Book Category page

Scenario: Verify that the user can see 'Name: A to Z' selection is present in 'Sort by' filter
Given User is on Books Category page
When User is on Books Category page
And Click on 'Sort by' Filter
And Check that 'Name: A to Z' selection is present
Then 'Name: A to Z' selection is present in 'Sort by' filter

Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
Given User is on books Category page
When User is on Books Category page
And Click on 'Sort by' Filter
And Check that 'Name: A to Z' is first in order
Then 'Name: A to Z' is first option in order

Scenario: Verify that the user can see 'Name: Ato Z' filter is functioning as expected(Note: Products are filtered in alphabetical order)
Given User is on Books Category page
When User is on Books Category page
And Click on 'Sort by' Filter
And Select 'Name: A to Z' filter
Then All products are displayed in alphabetical order








