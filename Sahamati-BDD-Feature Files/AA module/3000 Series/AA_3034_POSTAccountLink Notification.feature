Feature: On calling POST Account Link Notification API, verify that on sending account link notification request with invalid JWS
  API signature, the error response is received

  Scenario: 3034_1 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customer
  id in mock FIP. Finally send a valid account link notification request and use the valid JWS signature and add one
  character to the end and send on the x-jws-signature header
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3034_2 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customer id in mock FIP. Finally send a valid account link notification request and use the valid JWS signature and
  remove the last char and send on the x-jws-signature header.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3034_3 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customer id in mock FIP. Finally send a valid account link notification request and generate the JWS signature using a
  different key that is not used for anything and send on the x-jws-signature header.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3034_4 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customer id in mock FIP. Finally send a valid account link notification request and Use the valid JWS signature, and
  make a small change in the request body data and send on the x-jws-signature header.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.