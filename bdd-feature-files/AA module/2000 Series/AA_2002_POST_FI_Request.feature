Feature: On calling POST FI Request API, verify that on sending FI request with basic invalid values for each required
  field, the error response is received.

  Scenario: 2002_1 On calling the POST FI Request API, use the pre-generated consent details from settings, and send
  the multiple requests, each time one required field set to null. Verify that the error response is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is displayed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2002_2 On calling the POST FI Request API, use the pre-generated consent details from settings, and send
  the multiple requests, each time one required field set to empty string. Verify that the error response is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is displayed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2002_3 On calling the POST FI Request API, use the pre-generated consent details from settings, and send
  the multiple requests, each time one enum field set to non enum value, add an character at the end of last enum and
  remove the last character at the end of first enum. Verify that the error response is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is displayed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2002_4 On calling the POST FI Request API, use the pre-generated consent details from settings, and send
  the multiple requests, each time one array field set to empty array. Verify that the error response is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is displayed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2002_5 On calling the POST FI Request API, use the pre-generated consent details from settings, and send
  the multiple requests, each time one object field set to empty object. Verify that the error response is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is displayed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.
