Feature: On calling POST FI Notifications API, verify that on sending FI notification request with error FIStatus, the
  same FIStatus is sent back as FI notification to FIU.

  Scenario: 3021_1 On calling POST FI Notifications API, use the pre-generated consent details from settings and set
  a valid FI response in mock FIP. Send a FI request to AA and finally send a FI notification request with
  FIStatusNotification.FIStatusResponse.Accounts.FIStatus = DENIED.
    Given Calling the POST FI Notifications API.
    When POST FI Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification received in the mock FIU app, the
         FIStatusNotification.FIStatusResponse.Accounts.FIStatus is same as that is sent in the request to AA.

  Scenario: 3021_2 On calling POST FI Notifications API, use the pre-generated consent details from settings and set
  a valid FI response in mock FIP. Send a FI request to AA and finally send a FI notification request with
  FIStatusNotification.FIStatusResponse.Accounts.FIStatus = TIMEOUT.
    Given Calling the POST FI Notifications API.
    When POST FI Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification received in the mock FIU app, the
         FIStatusNotification.FIStatusResponse.Accounts.FIStatus is same as that is sent in the request to AA.

