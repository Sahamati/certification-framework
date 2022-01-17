Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with basic invalid values for FI request from AA,
  FI notification with error status is sent back to FIU.

  Scenario: 2021_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU with each time one required field set to null.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that on the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2021_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU with each time one required field set to empty string.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that on the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2021_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU with each time one enum field set to non enum value.
  Add an extra character at the end of last enum and remove the last character at the end of first enum.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that on the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2021_4 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU with each time one array field set to empty array.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that on the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2021_5 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU with each time one object field set to empty object.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that on the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.
