Feature: On calling GET Consent Handle request API, verify that on sending the consent handle request with
  invalid consentHandle, the error response is received.

  Scenario: 1016_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  send a valid consent request with an empty string. Verify that the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 404 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidConsentHandle .
    And Verify that the version is supported version.

  Scenario: 1016_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  send a valid consent request with valid consentHandle and remove a character at the end. Verify that the
  error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidConsentHandle .
    And Verify that the version is supported version.

  Scenario: 1016_3 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  send a valid consent request with valid consentHandle and add a character at the end. Verify that the
  error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidConsentHandle .
    And Verify that the version is supported version.

  Scenario: 1016_4 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Generate and use the random UUID. Verify that the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidConsentHandle .
    And Verify that the version is supported version.