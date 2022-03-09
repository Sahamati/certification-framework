Feature: On Calling Account link token request for a valid token and invalid RefNumber and check if
  it is responding with HTTP status code 400 (Bad Request)

  Scenario: 1052_1 Pick a single user account with first supported FIType and send single account link request.
  Send Account link token request with 00000000-0000-0000-0000-000000000000 in RefNumber field. Verify
  that HTTP 400 is displayed
    Given  Calling the Account Link token Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.