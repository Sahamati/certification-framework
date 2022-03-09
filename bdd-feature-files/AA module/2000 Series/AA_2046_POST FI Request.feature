Feature: On calling POST FI fetch Request API, verify that on sending FI request with invalid JWS API signature, the error
  response is received.

  Scenario: 2046_1 POST FI fetch Request API, use the pre-linked user details from settings, set a valid FI request. Use
  the valid JWS signature and add one character at the end and send on the x-jws-signature header.
    Given Calling the POST FI fetch Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2046_2 POST FI fetch Request API, use the pre-linked user details from settings, set a valid FI request. Use
  the valid JWS signature and remove the last character at the end and send on the x-jws-signature header.
    Given Calling the POST FI fetch Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2046_3 POST FI fetch Request API, use the pre-linked user details from settings, set a valid FI request.
  Generate the JWS signature using a different key that is not used for anything and send on the x-jws-signature header.
    Given Calling the POST FI fetch Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2046_4 POST FI fetch Request API, use the pre-linked user details from settings, set a valid FI request.
  Use the valid JWS signature, make a small change in the request body data and send on the x-jws-signature header.
    Given Calling the POST FI fetch Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.