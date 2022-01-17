Feature: On calling FIP and FIU Notifications API, verify that when the FI fetch request is not sent within the
  SLA time(10 seconds) and on receiving the FI ready notification, the FI notification with FIStatus TIMEOUT
  is received by FIU.

  Scenario: 2036_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set the invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a
  valid FI request to AA. Wait to receive FI notification in mock FIU. Wait for SLA timeout (10 seconds) and
  wait to receive FI notification on mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the
         FIStatusNotification.FIStatusResponse.Accounts.FIStatus is FAILED.

