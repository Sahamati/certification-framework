Feature: On calling POST Account Link Notification API, verify that on sending account link notification request with
  invalid accRefNumber, the error response is received.

  Scenario: 3028_1 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customer
  id in mock FIP. Finally send a valid account link notification request and use the valid accRefNumber and add an extra
  character at the end.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3028_2 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customer
  id in mock FIP. Finally send a valid account link notification request and use the valid accRefNumber and remove the
  last character.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3028_3 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customer id in mock FIP. Finally send a valid account link notification request and generate a random string of same
  length and try as accRefNumber.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.