Feature: On calling GET Consent Handle request API, verify that on sending consent handle request for a pending
  approval consent and user de-registered from AA, the error response is received.

  Scenario: 1023_1 On calling GET Consent Handle request API, generate a random customer id. Ask the user to
  register the generated customer id to AA, link one account and confirm. Send a valid consent request for
  that FIType, ask the user to deregister the customer id, and send a consent handle request. Verify that the
  error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the Error code is InvalidConsentHandle.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the version is supported version.
