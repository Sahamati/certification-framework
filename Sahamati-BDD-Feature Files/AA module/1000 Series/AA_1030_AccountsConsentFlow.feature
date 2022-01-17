Feature: On calling GET Consent Id request API, verify that on sending the consent GET request for a consent that is
  paused, the consent with PAUSED status is received.

  Scenario: 1030_1 On calling GET Consent Id request API, use the pre-linked user details from settings.
  Send a valid consent request. Set the Post consent response on mock server. Ask the user to approve the
  consent and confirm. Send a valid consent handle to receive READY status. Set consent notification response
  on FIP and FIU mock server. Ask the user to pause the consent and confirm. Send a consent GET request.
  Verify that the consent with PAUSED status is received.
    Given Calling the GET Consent Id request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the response status is PAUSED.