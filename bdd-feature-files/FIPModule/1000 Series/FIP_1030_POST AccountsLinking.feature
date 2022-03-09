Feature: On Calling POST Account Link API with valid account details and check the txnid traceability,
  Api Version, timestamp, AuthenticatorType and RefNummber

  Scenario: 1030_1 Pick a single user account with first supported FIType and send single account link request.
  Send Account Link API for JSON structure Validation for txnid traceability, Api Version, timestamp,
  AuthenticatorType and RefNummber. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Account Link Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.
    And Verify that the version is supported version.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And Verify that the txnid id is same as the txnid from request.
    And Verify that the AuthenticatorType value should be match the settings value.
    And RefNumber should be a proper UUID