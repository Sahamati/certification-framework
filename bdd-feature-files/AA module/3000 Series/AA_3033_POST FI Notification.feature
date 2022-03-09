Feature: On calling POST FI Notification API, verify that on sending consent notification request with invalid
  JWS API signature, error response is received.

  Scenario: 3033_1 On calling POST FI Notification API, Use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the
  valid JWS signature and add one character at the end and send on the x-jws-signature header.
    Given On calling POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3033_2 On calling POST FI Notification API, Use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the
  valid JWS signature and remove the last character and send on the x-jws-signature header.
    Given On calling POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3033_3 On calling POST FI Notification API, Use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and generate
  the JWS signature using a different key that is not used for anything and send on the x-jws-signature header.
    Given On calling POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3033_4 On calling POST FI Notification API, Use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the
  valid JWS signature, make a small change in the request body data and send on the x-jws-signature header.
    Given On calling POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.