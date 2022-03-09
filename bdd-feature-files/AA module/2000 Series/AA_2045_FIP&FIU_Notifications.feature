Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with invalid KeyMaterial for FI fetch
  request from AA, and FI notification with error status is sent back to FIU.

  Scenario: 2045_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set
  a valid FI response in mock FIP. Send a FI request to AA and get the list of non supported standard crypto algorithms
  from settings and use each of them in cryptoAlg field and set the FI fetch response in mock FIP. Set the FI notification
  response in FIU mock server. Send a FI ready notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2045_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set
  a valid FI response in mock FIP. Send a FI request to AA and get the list of non supported standard curves from
  settings and use each of them in curve field and set the FI fetch response in mock FIP. Set the FI notification
  response in FIU mock server. Send a FI ready notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.

  Scenario: 2045_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set
  a valid FI response in mock FIP. Send a FI request to AA and use a expired DHPublicKey. Set the FI fetch response in
  mock FIP. Set the FI notification response in FIU mock server. Send a FI ready notification to AA and wait to receive
  FI notification in mock FIU.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
         matching the session id received in the FI response from AA.
    And  Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
         is FAILED.