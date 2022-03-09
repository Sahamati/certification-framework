Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with basic invalid values for FI fetch
  request from AA, the FI notification with error status is sent back to FIU.

  Scenario: 2037_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one required field set to null for FI fetch
  response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  Wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2037_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one required field set to empty string
  for FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready
  notification to AA. Wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2037_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one enum field set to non enum value.
  Add an extra character at the end of last enum and remove the last character at the end of first enum for FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready
  notification to AA. Wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2037_4 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one array field set to empty array for
  FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready
  notification to AA. Wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2037_5 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set each time one object field set to empty object for
  FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready
  notification to AA. Wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED.