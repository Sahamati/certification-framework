Feature: On calling GET FI fetch Request API, verify that on sending FI fetch request with invalid JWS API signature,
  the error response is received.

  Scenario: 2048_1 GET FI fetch Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Use the valid JWS signature and
  add one character at the end and send on the x-jws-signature header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.

  Scenario: 2048_2 GET FI fetch Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Use the valid JWS
  signature and remove the last character at the end and send on the x-jws-signature header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.

  Scenario: 2048_3 GET FI fetch Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Generate the JWS
  signature using a different key that is not used for anything and send on the x-jws-signature header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.

  Scenario: 2048_4 GET FI fetch Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Use the valid JWS
  signature, make a small change in the request body data and send on the x-jws-signature header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
