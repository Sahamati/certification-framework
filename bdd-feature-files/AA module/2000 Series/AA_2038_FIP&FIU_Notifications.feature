Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with invalid version for FI fetch
  request from AA, FI notification with error status is sent back to FIU.

  Scenario: 2038_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one required field set to null for FI fetch
  response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  Wait to receive FI notification in mock FIU. Use the incorrect version number from settings.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2038_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one required field set to null for FI fetch
  response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  Wait to receive FI notification in mock FIU. Add an extra digit at the end of correct version number.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2038_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one required field set to null for FI fetch
  response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  Wait to receive FI notification in mock FIU. Remove the last character or digit at the end of correct version number.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.