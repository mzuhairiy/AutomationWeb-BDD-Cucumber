#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@HighPriority
Feature: Login
  User want to login with valid credential

  @Positive
  Scenario Outline: User successfully login
    Given User is on login page
    When User input valid <email> as email
    And User input valid <password> as password
    And User click login button
    Then User verify login result

    Examples: 
      | email              | password  |
      | zuhair2@zuhair.com | zuhair123 |
      | zuhair@zuhair.com  | zuhair123 |
