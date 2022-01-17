Feature: On calling POST Consent Notification API, verify that on sending a valid consent notification request, the
  success response is received.

  Scenario: 3001_1 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the POST
  consent response in FIP mock server. Send a valid consent request and ask the user to approve the consent and confirm.
  Send a valid consent handle to receive ready status. Send a consent GET request and finally send a consent
  notification request.
    Given Calling the POST FI fetch Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 200.
