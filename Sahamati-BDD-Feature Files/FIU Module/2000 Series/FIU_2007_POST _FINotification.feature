Feature: On calling POST FI notification request API, verify that on sending FI Notification with invalid
  format txnid, the error response is received.

  Scenario: 2007_1 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification by generating a UUID string and adding an
  extra character at the end of txnid. Verify that the error response is displayed.
    Given Calling the POST FI notification request API.
    When POST action is performed.
    Then Verify that the response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes
        from the current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_2 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification by generating a UUID string and removing
  the last character at the end of txnid. Verify that the error response is displayed.
    Given Calling the POST FI notification request API.
    When POST action is performed.
    Then Verify that the response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes
  from the current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.