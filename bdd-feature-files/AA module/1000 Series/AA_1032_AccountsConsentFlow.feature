Feature: On calling GET Consent Id request API, verify that on sending consent GET request for a consent that is
  associated to a de-linked account, the consent with REVOKED status is received.

  Scenario: 1032_1 On calling GET Consent Id request API, generate a random customer id. Ask the user to
  register the same to AA, link two accounts from same FIP of same FIType and confirm. Send a valid consent
  request for that FIType and set the post consent response on mock server. Ask the user to approve the consent
  for both the accounts. Send a consent handle request to receive READY status. Set the consent notification
  response on FIP and FIU mock server. Ask the user to de-link one account and confirm. Send the consent GET
  request. Verify that the consent with REVOKED status is received.
    Given Calling the GET Consent Id request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the response status is REVOKED.