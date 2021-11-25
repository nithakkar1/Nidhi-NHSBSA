Feature: As a Wales user I need to know what help I can get with my NHS costs

  Background:
    Given i open the NHS Cost checker landing page
    Then i am on the Check what help you could get to pay for NHS costs page
    And i click on Start now button

  Scenario: Mandatory fields – Country name field – error message
    When I am on the Which country do you live in? page
    And select the country is blank
    And click the ‘Next’ button
    Then the ‘Select the country you live in' error message is displayed

  Scenario Outline: Checking error message for an incorrect date of birth
    When I am on the Which country do you live in? page
    And select the country as ‘Wales’
    And click the ‘Next’ button
    Then I am on What is your date of birth? page
    And I enter Invalid date of birth '<Day>' '<Month>' '<Year>'
    And I click the ‘Next’ button
    Then I verify error message text 'Check the year you were born is correct'
    Examples:
      | Day| Month| Year | 
      | 35 | 07   | 1900 |

  Scenario Outline: Checking error message for an incorrect date of birth
    When I am on the Which country do you live in? page
    And select the country as ‘Wales’
    And click the ‘Next’ button
    Then I am on What is your date of birth? page
    And I enter Invalid date of birth '<Day>' '<Month>' '<Year>'
    And I click the ‘Next’ button
    Then I verify error message text 'Enter your date of birth'
    Examples:
      | Day| Month| Year |
      | 35 | 07   | 1961 |
      | 31 | 13   | 1961 |
      | 31 | 07   | 19666|
      | 35 | 00   | 19666|


  Scenario Outline: Test 1
    When I am on the Which country do you line in? page
    And I select the country as ‘Wales’
    And I click the ‘Next’ button
    Then I am on What is your date of birth? page
    And I select a date of birth <date>
    And I click the ‘Next’ button
    Then I am on Do you live with a partner? Page
    And I select yes
    And I click the ‘Next’ button
    Then I am on Do you or your partner claim any benefits or tax credits? Page
    And I select yes
    And I click the ‘Next’ button
    Then I am on Do you or your partner get paid Universal Credit? Page
    And I select yes, we receive Universal Credit payments
    And I click the ‘Next’ button
    Then I am on As part of your joint Universal Credit, do you have any of these? Page
    And I select yes
    And I click the ‘Next’ button
    Then I am on Did you and your partner have a combined take-home pay of £935 or less in your last Universal Credit period? Page
    And I select yes
    And I click the ‘Next’ button
    Then I verify ‘You get help with NHS costs’
    Examples:
      | date       |
      | 31 07 1961 |


  Scenario Outline: Test 2
    When I am on the Which country do you line in? page
    And I select the country as ‘Wales’
    And I click the ‘Next’ button
    Then I am on What is your date of birth? page
    And I select a date of birth <date>
    And I click the ‘Next’ button
    Then I am on Do you live with a partner? Page
    And I select No
    And I click the ‘Next’ button
    Then I am on Do you claim any benefits or tax credits? Page
    And I select No
    And I click the ‘Next’ button
    Then I am on Are you pregnant or have you given birth in the last 12 months? Page
    And I select No
    And I click the ‘Next’ button
    Then I am on Do you have an injury or illness caused by serving in the armed forces? Page
    And I select No
    And I click the ‘Next’ button
    Then I am on Do you live permanently in a care home? Page
    And I select No
    And I click the ‘Next’ button
    Then I am on Do you have more than £16,000 in savings, investments or property? Page
    And I select No
    And I click the ‘Next’ button
    Then I verify ‘You get help with NHS costs’
    Examples:
      | date       |
      | 31 07 1961 |



  Scenario Outline: Test 3
    When I am on the Which country do you line in? page
    And I select the country as ‘Wales’
    And I click the ‘Next’ button
    Then I am on What is your date of birth? page
    And I select a date of birth <date>
    And I click the ‘Next’ button
    Then I am on Do you live with a partner? Page
    And I select No
    And I click the ‘Next’ button
    Then I am on Do you claim any benefits or tax credits? Page
    And I select Yes
    And I click the ‘Next’ button
    Then I am on Do you get paid Universal Credit? Page
    And I select Not yet, but I've applied
    And I click the ‘Next’ button
    Then I am on While you're waiting on your Universal Credit decision Page
    And I click the ‘Next’ button
    Then I am on Do you get any of these benefits? Page
    And I select Income Support
    And I select Employment and Support Allowance (ESA)
    And I click the ‘Next’ button
    Then I verify ‘You get help with NHS costs’
    Examples:
      | date       |
      | 31 07 1961 |