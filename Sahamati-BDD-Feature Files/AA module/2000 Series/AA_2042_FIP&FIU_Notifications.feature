Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with fip id of the alternate fip for
  FI fetch request from AA, FI notification with error status is sent back to FIU.

  Scenario: 2042_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set
  a valid FI response in mock FIP. Send a FI request to AA and try setting the FIP Id of alternate FIP in FI fetch
  response in regular mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to
  AA and finally wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.