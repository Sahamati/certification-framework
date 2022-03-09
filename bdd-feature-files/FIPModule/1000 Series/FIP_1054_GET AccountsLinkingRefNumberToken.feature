Feature: On Calling Account link token request as alternate AA with details of regular AA, error
  response is received

  Scenario: 1054_1 Pick the user with single account in first supported FIType, send a valid account link
  request as regular AA, get the received OTP from user and generate a valid account link token request for
  regular AA. Use the same user and account details, send a valid account link request as alternate AA, get
  the received OTP from user. Send Account link token request with details of regular AA but as alternate AA.
  Verify that HTTP 400 is displayed
    Given  Calling the Account Link token Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.

  Scenario: 1054_2 Pick the user with single account in first supported FIType, send a valid account link
  request as regular AA, get the received OTP from user and generate a valid account link token request for
  regular AA. Use the same user and account details, send a valid account link request as alternate AA, get
  the received OTP from user. Send Account link token request as alternate AA with reference number of
  regural AA. Verify that HTTP 400 is displayed
    Given  Calling the Account Link token Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.

  Scenario: 1054_3 Pick the user with single account in first supported FIType, send a valid account link
  request as regular AA, get the received OTP from user and generate a valid account link token request for
  regular AA. Use the same user and account details, send a valid account link request as alternate AA, get
  the received OTP from user. Send Account link token request as alternate AA with token generated for
  regural AA. Verify that HTTP 400 is displayed
    Given  Calling the Account Link token Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidLinkToken.
    And Verify that the version is supported version.