Feature: On calling POST FI Notification API, verify that on sending FI notification request with incorrect version,
  the error response is received.

  Scenario: 3013_1 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the
  incorrect version number from settings.
    Given Calling the POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3013_2 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and add an extra
  digit at the end of correct version number.
    Given Calling the POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3013_3 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and remove the last
  character digit at the end of correct version number.
    Given Calling the POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.