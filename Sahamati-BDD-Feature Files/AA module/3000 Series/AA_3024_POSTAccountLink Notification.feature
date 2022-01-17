Feature: On calling POST Account Link Notification API, verify that on sending account link notification request with incorrect
  version, the error response is received.

  Scenario: 3024_1 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customer
  id in mock FIP. Finally send a valid account link notification request and use incorrect version number from settings.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersionFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3024_2 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customer id in mock FIP. Finally send a valid account link notification request and add an extra digit at the end of
  correct version number.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersionFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3024_3 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customer id and ask the user to register the generated customer id. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customer id in mock FIP. Finally send a valid account link notification request and remove the last character digit
  at the end of correct version number.
    Given Calling POST Account Link Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersionFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.