Feature: On Calling FI Fetch request with invalid JWS API signature, error response is received

  Scenario: 3022_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request. Set Fi/Notification response on mock server. send a valid FI request
  and then send a valid FI fetch request with following variations on the x-jws-signature header. Send FI
  Fetch request with valid details by Using the valid JWS signature but add one char to the end. Verify that
  HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.

  Scenario: 3022_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request. Set Fi/Notification response on mock server. send a valid FI request
  and then send a valid FI fetch request with following variations on the x-jws-signature header. Send FI
  Fetch request with valid details by Using the valid JWS signature but remove one char from the end. Verify
  that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.

  Scenario: 3022_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request. Set Fi/Notification response on mock server. send a valid FI request
  and then send a valid FI fetch request with following variations on the x-jws-signature header. Send FI
  Fetch request with valid details by Generating the JWS signature using a different key that is not used
  for anything else. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.

  Scenario: 3022_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent request. Set Fi/Notification response on mock server. send a valid FI request
  and then send a valid FI fetch request with following variations on the x-jws-signature header. Send FI
  Fetch request with valid details by using the valid JWS signature, but do a small change in the request
  body data. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.