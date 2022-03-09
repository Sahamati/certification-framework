Feature: On calling GET Consent Id request API, verify that on sending the consent GET request for a consent that is
  associated to a de-registered user, and expecting the error response.

  Scenario: 1033_1 On calling GET Consent Id request API, generate a random customer id, ask the user to
  register the generated customer id to AA. Link one account and confirm. Send a valid consent request for
  that FIType, set the Post consent response on mock server. Ask the user to approve the consent and confirm.
  Send a consent handle request to receive READY status and set the consent notification response on FIP anf FIU
  mock server. Ask the user to de-register the customer id and confirm. Send a consent GET request .
  Verify that the consent with REVOKED status is received.
    Given Calling the GET Consent Id request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the Error code is InvalidConsentId.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the version is supported version.