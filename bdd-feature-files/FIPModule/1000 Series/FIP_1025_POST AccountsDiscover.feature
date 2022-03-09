Feature: On Calling POST Account discovery API  with valid customer details and a ancilliary identifier to
  check if it is returning bad request

  Scenario: 1025_1 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier CRN for FIType DEPOSIT. Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_2 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier CRN for FIType TERM-DEPOSIT. Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_3 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier CRN for FIType RECURRING_DEPOSIT.Verify
  that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_4 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier Others for FIType DEPOSIT.Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_5 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier Others for FIType TERM-DEPOSIT.Verify
  that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_6 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier Others for FIType RECURRING_DEPOSIT.Verify
  that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_7 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier ACCNO for FIType DEPOSIT.Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_8 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier ACCNO for FIType TERM-DEPOSIT.Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1025_9 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier ACCNO for FIType RECURRING_DEPOSIT.Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.




