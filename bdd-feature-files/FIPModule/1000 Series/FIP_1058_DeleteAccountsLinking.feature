Feature: On Calling Account de-link request with invalid JWS API signature, error response is received

  Scenario: 1058_1 Use a single user account with first supported FIType, send an account link request, send
  an account link token request. Send Account de-link request with valid details by Using the valid JWS
  signature but add one char to the end. Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1058_2 Use a single user account with first supported FIType, send an account link request, send
  an account link token request. Send Account de-link request with valid details by Using the valid JWS
  signature but remove one char from the end. Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1058_3 Use a single user account with first supported FIType, send an account link request, send
  an account link token request. Send Account de-link request with valid details by Generating the JWS
  signature using a different key that is not used for anything else. Verify that HTTP 400 is displayed
  in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1058_4 Use a single user account with first supported FIType, send an account link request, send
  an account link token request. Send Account de-link request with valid details by using the valid JWS
  signature, but do a small change in the request body data. Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.