Feature: On calling GET FI Notification API, verify that on sending FI notification request with basic invalid values
  for each required field, the error response is received.

  Scenario: 3012_1 On calling GET FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA and finally send a FI notification request with each time
  one required field set to null.
    Given Calling the GET FI Notification API.
    When GET action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed as per the fields.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_2 On calling GET FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA and finally send a FI notification request with each time
  one required field set to empty string.
    Given Calling the GET FI Notification API.
    When GET action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed as per the fields.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_3 On calling GET FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA and finally send a FI notification request with each time
  one enum field set to non enum value. Add an extra character at the end of last enum and remove the last char at the
  end of first enum.
    Given Calling the GET FI Notification API.
    When GET action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed as per the fields.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_4 On calling GET FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA and finally send a FI notification request with each time
  one array field set to empty array.
    Given Calling the GET FI Notification API.
    When GET action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed as per the fields.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_5 On calling GET FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA and finally send a FI notification request with each time
  one object field set to empty object.
    Given Calling the GET FI Notification API.
    When GET action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed as per the fields.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.