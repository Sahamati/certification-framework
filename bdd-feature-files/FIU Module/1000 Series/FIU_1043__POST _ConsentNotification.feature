Feature: On calling POST Consent Notification API, verify that on sending consent Notification request with Alternate AA
  API key, the error response is received.

  Scenario: 1043_1 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Send the consent or notification with
  status as ACTIVE with Alternate AA api key. Verify that the error response is received.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the error response is received.