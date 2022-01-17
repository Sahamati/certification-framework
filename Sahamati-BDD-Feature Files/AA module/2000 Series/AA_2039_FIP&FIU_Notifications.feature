Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with invalid timestamp for FI fetch
  request from AA, FI notification with error status is sent back to FIU.

  Scenario: 2039_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set the 2 to 3 standard timestamp formats that are
  not followed in specification and send the FI fetch response in mock FIP. Set the FI notification response in FIU mock
  server. Send a FI ready notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2039_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Add an extra character at the end of proper timestamp
  and send the FI fetch response in mock FIP. Set the FI notification response in FIU mock server. Send a FI ready
  notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2039_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set the valid timestamp with +15 min from current time
  and send the FI fetch response in mock FIP. Set the FI notification response in FIU mock server. Send a FI ready
  notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2039_4 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set a valid FI response in mock FIP. Send a FI request to AA. Set the valid timestamp with -15 min from current time
  and send the FI fetch response in mock FIP. Set the FI notification response in FIU mock server. Send a FI ready
  notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED.