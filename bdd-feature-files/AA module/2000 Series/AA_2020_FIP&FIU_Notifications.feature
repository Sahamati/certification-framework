Feature: On calling FIP and FIU Notifications API, verify that on sending a valid FI request, FI notification with READY
  status is sent back to FIU.

  Scenario: 2020_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set a
  valid FI response in mock FIP. Send a valid FI request to AA and set a valid FI fetch response in mock FIP.
  Set the FI notification response in FIU mock server and send the FI ready notification. Wait to receive the FI
  notification with status READY in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification recieved in the mock FIU app, the field of Version contains the version
         of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the Notifier type is AA.
    And  Verify that Notifier.id is the valid id of the current testing AA.
    And  Verify that the FIStatusNotification.sessionId is matching the session id received in the FI request to AA.
    And  Verify that the FIStatusNotification.sessionStatus is COMPLETED.
    And  Verify that the FIStatusNotification.fipID is id of the mock FIP app.
    And  Verify that the FIStatusNotification.FIStatusResponse.Accounts.linkRefNumber is matching the linkRefNumber
         sent by the mock FIP.
    And  Verify that the FIStatusNotification.FIStatusResponse.Accounts.FIStatus is 'READY'.