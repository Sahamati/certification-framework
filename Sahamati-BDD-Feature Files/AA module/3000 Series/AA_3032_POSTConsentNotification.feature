Feature: On calling POST Consent Notification API, verify that on sending consent notification request with invalid
  JWS API signature, error response is received.

  Scenario: 3032_1 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the
  POST consent response in FIP mock server and send a valid consent request. Ask the user to approve the consent and
  confirm. Send a valid consent handle to receive ready status and send a consent GET request. Finally send a consent
  notification request. Use the valid JWS signature, add one character at the end and send on the x-jws-signature
  header.
    Given On calling POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3032_2 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the
  POST consent response in FIP mock server and send a valid consent request. Ask the user to approve the consent and
  confirm. Send a valid consent handle to receive ready status and send a consent GET request. Finally send a consent
  notification request. Use the valid JWS signature and remove the last character and send on the x-jws-signature
  header.
    Given On calling POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3032_3 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the
  POST consent response in FIP mock server and send a valid consent request. Ask the user to approve the consent and
  confirm. Send a valid consent handle to receive ready status and send a consent GET request. Finally send a consent
  notification request. Generate the JWS signature using a different key that is not used for anything and send on the x-jws-signature
  header.
    Given On calling POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3032_4 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the
  POST consent response in FIP mock server and send a valid consent request. Ask the user to approve the consent and
  confirm. Send a valid consent handle to receive ready status and send a consent GET request. Finally send a consent
  notification request. Use the valid JWS signature, make a small change in the request body data and send on the x-jws-signature
  header.
    Given On calling POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.