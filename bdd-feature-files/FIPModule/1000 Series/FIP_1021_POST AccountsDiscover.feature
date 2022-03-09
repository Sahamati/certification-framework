Feature: On Calling POST Account discovery API with valid customer id, all combinations of supported FITypes
  (sampling rate of 2) and strong customer identifier and check if the received discovered account details are
  matching

  Scenario: 1021_1 On Calling POST Account discovery with Strong Identifier MOBILE and FITypes DEPOSIT,
  TERM-DEPOSIT and expecting HTTP status code 200 in response
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Must contain only the accounts from requested two FITypes.(use the user which has 3 accounts)
    And Verify that the HTTP status code 200 in received



  Scenario: 1021_2 On Calling POST Account discovery with Strong Identifier MOBILE and FITypes DEPOSIT,
  RECURRING_DEPOSIT and expecting HTTP status code 200 in response
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Must contain only the accounts from requested two FITypes.(use the user which has 3 accounts)
    And Verify that the HTTP status code 200 in received


  Scenario: 1021_3 On Calling POST Account discovery with Strong Identifier MOBILE and FITypes TERM-DEPOSIT,
  RECURRING_DEPOSIT and expecting HTTP status code 200 in response
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Must contain only the accounts from requested two FITypes.(use the user which has 3 accounts)
    And Verify that the HTTP status code 200 in received




