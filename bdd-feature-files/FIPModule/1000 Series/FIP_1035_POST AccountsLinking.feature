Feature: On Calling POST Account Link API  with valid account details and unmasked account number and
  check if it is responding with error response for each FIType

  Scenario: 1035_1 Pick the 1 account user for each supported FIType and try sending unmasked account number for
  each. Send Account Link request with Unmasked account number Validation for FIType DEPOSIT. Verify that HTTP
  404 is displayed in response.
    Given  Calling the POST Account Link Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is AccountNotFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1035_2 Pick the 1 account user for each supported FIType and try sending unmasked account number for
  each. Send Account Link request with Unmasked account number Validation for FIType TERM-DEPOSIT. Verify that HTTP
  404 is displayed in response.
    Given  Calling the POST Account Link Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is AccountNotFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1035_3 Pick the 1 account user for each supported FIType and try sending unmasked account number for
  each. Send Account Link request with Unmasked account number Validation for FIType RECURRING_DEPOSIT. Verify that HTTP
  404 is displayed in response.
    Given  Calling the POST Account Link Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is AccountNotFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.