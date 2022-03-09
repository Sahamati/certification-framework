Feature: On calling GET Consent Id request API, verify that on sending consent GET request for a consent
  that is expired, the consent with expired status is received.

  Scenario: 1029_1 On calling GET Consent Id request API, use the pre-linked user details from settings.
  Send a valid consent request. Set the Post consent response on mock server. Ask the user to approve the
  consent and confirm. Send a valid consent handle to receive READY status. Wait till the consent expires
  and then send a consent GET request. Verify that the consent with expired status is received.
    Given Calling the GET Consent Id request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the response status is EXPIRED.