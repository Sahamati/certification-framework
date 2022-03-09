Feature: On Calling POST Account discovery API with valid customer id, all supported FITypes and strong customer
  identifier and check if the received discovered account details are matching


  Scenario: 1020_1 On Calling POST Account discovery with strong identifier MOBILE for a user with one account
  in all supported FITypes and expect the received account details to have exactly one account in all supported
  FITypes, account numbers to be masked properly and account details to exactly match the user accounts
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Verify that the HTTP status code 200 in received


  Scenario: 1020_2 On Calling POST Account discovery with strong identifier MOBILE for a user with two accounts
  in all supported FITypes and expect the received account details to have exactly two accounts in all supported
  FITypes, account numbers to be masked properly and account details to exactly match the user accounts
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Verify that the HTTP status code 200 in received


  Scenario: 1020_3 On Calling POST Account discovery with strong identifier MOBILE for a user with three accounts
  in all supported FITypes and expect the received account details to have exactly three accounts in all supported
  FITypes, account numbers to be masked properly and account details to exactly match the user accounts
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Verify that the HTTP status code 200 in received




