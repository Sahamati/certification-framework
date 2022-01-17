Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with invalid fip id for FI fetch
  request from AA, FI notification with error status is sent back to FIU.

  Scenario: 2041_1 On calling FIP and FIU Notifications API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Generate
  and use a random fip id.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2041_2 On calling FIP and FIU Notifications API, use the pre-linked user details from settings, set a valid
  FI response in mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI
  notification response in FIU mock server. Send the FI ready notification and wait to receive FI ready notification
  in mock FIU. Use the valid fip id and add an extra character at the end.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2041_3 On calling FIP and FIU Notifications API, use the pre-linked user details from settings, set a valid
  FI response in mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI
  notification response in FIU mock server. Send the FI ready notification and wait to receive FI ready notification
  in mock FIU. Use the valid fip id and remove the last character.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.