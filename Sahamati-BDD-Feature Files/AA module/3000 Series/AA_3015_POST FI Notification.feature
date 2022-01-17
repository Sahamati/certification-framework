Feature: On calling POST FI Notification API, verify that on sending FI notification request with invalid format txnid,
  the error response is received.

  Scenario: 3015_1 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and generate a new
  UUID and add an extra character at the end.
    Given Calling the POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3015_2 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and generate a new
  UUID and remove the last character.
    Given Calling the POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.