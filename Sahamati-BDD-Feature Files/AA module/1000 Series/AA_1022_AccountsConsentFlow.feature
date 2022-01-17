Feature: On calling GET Consent Handle request API, verify that on sending consent handle request
  for consent that is approved and later account is de-linked by the user, response with consent
  status READY is received.

  Scenario: 1022_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Generate a random customer id, ask the user to register the same to AA, link two accounts from same FIP of
  same FIType and confirm. Set the post consent response on Mock FIP, send a valid consent request for
  that FIType. Ask the user to approve the consent for both the accounts. Send a consent handle request to
  receive the READY status. Set the consent notification response on mock server. Ask the user to de-link one
  account and confirm. Send the consent handle request. Verify that the READY consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the ConsentStatus.status is READY.

  Scenario: 1022_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Generate a random customer id, ask the user to register the same to AA, link two accounts from same FIP of
  same FIType and confirm. Set the post consent response on Mock FIP, send a valid consent request for
  that FIType. Ask the user to approve the consent for both the accounts. Send a consent handle request to
  receive the READY status. Set the consent notification response on mock server. Ask the user to de-link the
  second account and confirm. Send the consent handle request. Verify that the READY consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the ConsentStatus.status is READY.