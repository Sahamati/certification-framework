Feature: On calling GET Consent Handle request API, verify that on sending consent handle request for consent that is
  expired after approval, response with consent status READY is received.

  Scenario: 1019_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Set the Post consent response on Mock FIP. Send a consent request for linked FIType which is valid only
  for 5 minutes. Ask the user to approve the consent before expiry and confirm. Send the consent handle request
  to receive READY status, wait for 5 minutes and send a valid consent handle request. Verify that the
  READY consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the ConsentStatus.status is READY.

  Scenario: 1019_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Set the Post consent response on Mock FIP. Send a consent request for non-linked FIType which is valid only
  for 5 minutes. Ask the user to approve the consent before expiry and confirm. Send the consent handle request
  to receive READY status, wait for 5 minutes and send a valid consent handle request. Verify that the
  READY consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the ConsentStatus.status is READY.