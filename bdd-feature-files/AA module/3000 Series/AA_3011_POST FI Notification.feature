Feature: On calling POST FI Notification API, verify that on sending a valid FI notification request,
  the success response is received.

  Scenario: 3011_1 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP. Send a valid FI request to AA and set the FI fetch response in Mock FIP. Set the
  FI notification in FIU mock server and finally send a FI notification request.
    Given Calling the POST FI Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 200.
