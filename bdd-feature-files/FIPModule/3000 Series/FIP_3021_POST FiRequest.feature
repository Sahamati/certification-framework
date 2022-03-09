Feature: On Calling POST FI Request with invalid JWS API signature, error response is received

  Scenario: 3021_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request and then send a valid FI request with following variations on the
  x-jws-signature header. Send POST Account FIRequest with valid details by Using the valid JWS signature but
  add one char to the end. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3021_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request and then send a valid FI request with following variations on the
  x-jws-signature header. Send POST Account FIRequest with valid details by Using the valid JWS signature but
  remove one char from the end. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3021_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request and then send a valid FI request with following variations on the
  x-jws-signature header. Send POST Account FIRequest with valid details by Generating the JWS signature
  using a different key that is not used for anything else. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3021_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request and then send a valid FI request with following variations on the
  x-jws-signature header. Send POST Account FIRequest with valid details by using the valid JWS signature,
  but do a small change in the request body data (timestamp). Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.