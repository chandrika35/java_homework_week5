Feature: Nopcommerce Registration

  As a User
  I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given 	I open thr windows Edge browser
    When	I enter Url https://www.demo.nopcommerce.com/register
    Then 	I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data in mandatory fields
    When 	I enter first name "<First Name>"field
    And 	I enter last name "<Last Name>"
    And 	I enter Email address "<Email>"
    And 	I enter Password "<Password>"
    And 	I enter Confirm Password "<Confirm Password>"
    And 	I Click on Register button
    Then 	I can see an error message "<error message>"
    And 	I am not able to register

    Examples:
      |First Name|Last Name|Email                |Password|Confirm Password |error message              			   |
      |  --	   |Mehta      |ritumehta@hotmail.com|456897  |456897           |please enter First Name     			   |
      |Ritu	   |--         |ritumehta@hotmail.com|456897  |456897  	        |please enter Last Name      			   |
      |Ritu    |Mehta      |   --		         |456897  |456897  		    |please enter valid email   			   |
      |Ritu	   |Mehta      |ritumehta@hotmail.com|--      |456897			|password is required              		   |
      |Ritu    |Mehta      |ritumehta@hotmail.com|456897  |--				|confirm password is required              |
      |Ritu    |Mehta      |ritumehta@hotmail.com|456897  |45689			|password and confirm password do not match|
      |Ritu    |Mehta      |ritumehta@hotmail.com|45689   |-- 			    |minimum 6 character password is required  |
      |--	   |--		   |--		       	     |--	  |		            |Mandatory (*) filed is required           |
Scenario: I should be able to selectany one radio button from Gender Lable of your Personal Details section
Given I select "Female" radio button
And   I select "Female" radio button
Then  I am able to select any one of the radio button

Scenario Outline: I shoud be able to select Day, Month and Year from drop down list od Date of birth field
Given I am on "Date of Birth" field of "Your Personal Detail" section
When  I select day "<DAY>"
When  I select Month "<Month>"
And   I select Year "<Year>"
Then  I am able to select Day, Month and Year from the drop down list

Examples:
|Day  |Month   |Year  |
|10   |December| 1983 |

Scenario: I should be able to check and uncheck the Newsletter box on options selection
Given I am on Newsletter lable on Option section
When  I click on "<Newsletter>" checkbox
And   I again click on Newsletter Checkbox
Then  I was able to check and uncheck the box next to Newsletter leble


  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When 	I enter First name "Ritu"
    And	 	I enter Last name "Mehta"
    And 	I enter Email "ritumehta@hotmail.com"
    And 	I enter Password "456897"
    And 	I enter Confirm Password "456897"
    And 	I click on Register button
    Then 	I am able to register successfully
