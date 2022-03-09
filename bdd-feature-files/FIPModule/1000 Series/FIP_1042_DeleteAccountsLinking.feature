Feature: On Calling Account de-link API with null values, empty string values for each required
  field and check if it is responding with a bad request

  Scenario: 1042_1 On Calling DELETE Accounts link with null values set in required field. Verify that HTTP
  400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1042_2 On Calling DELETE Accounts link with Empty String values set in required field. Verify that HTTP
  400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.