Feature: On calling GET Consent Handle request API, verify that on sending the consent GET request with invalid
  consent Id, the error response is received.

  Scenario: 1027_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request. Set the Post consent response on mock server. Ask the user to approve the
  consent and confirm. Send a valid consent handle request and use an empty string. Verify that the error
  response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 404 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the Error code is InvalidConsentId.
    And  Verify that the version is supported version.

  Scenario: 1027_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request. Set the Post consent response on mock server. Ask the user to approve the
  consent and confirm. Send a valid consent handle request, use the valid consentId, and remove a character at
  the end. Verify that the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the Error code is InvalidConsentId.
    And  Verify that the version is supported version.

  Scenario: 1027_3 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request. Set the Post consent response on mock server. Ask the user to approve the
  consent and confirm. Send a valid consent handle request, use the valid consentId and add a character at
  the end. Verify that the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the Error code is InvalidConsentId.
    And  Verify that the version is supported version.

  Scenario: 1027_4 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request. Set the Post consent response on mock server. Ask the user to approve the
  consent and confirm. Send a valid consent handle request, generate and use the random UUID.
  Verify that the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the Error code is InvalidConsentId.
    And  Verify that the version is supported version.