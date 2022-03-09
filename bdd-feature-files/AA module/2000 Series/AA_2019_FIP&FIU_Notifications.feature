Feature: On calling FIP and FIU Notifications API, verify that on sending a valid FI request, AA sends a FI request with same
  details to mock FIP app.

  Scenario: 2019_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a valid
  FI response in mock FIP and send a valid FI request. Wait for receiving the FI request in mock FIP.
    Given Calling the FIP and FIU Notifications API.
    When FIP and FIU Notifications API, action is performed.
    Then Verify that in the request, received by the mock FIP, the value of all the fields are matching the FI request
         sent to AA.