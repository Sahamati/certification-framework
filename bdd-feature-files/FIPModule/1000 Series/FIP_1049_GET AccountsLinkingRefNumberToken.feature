Feature: On Calling Account link token request for a valid token and RefNumber received by linking
  a single account and check if it is responding with a valid response code and JSON structure

  Scenario: 1049_1 Pick a single user account with first supported FIType and send single account link request
  and then send single account link token request. Send Account link token request sent with all valid details.
  Verify that HTTP 200 is displayed
  in response.
    Given  Calling the Account Link token Flow API
    When  GET action is performed.
    Then  Verify that the Response code 200 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And Verify that the version is supported version.
    And Verify that customerAddress and accRefNumber should match the values sent in the initial link request
    And status should be LINKED