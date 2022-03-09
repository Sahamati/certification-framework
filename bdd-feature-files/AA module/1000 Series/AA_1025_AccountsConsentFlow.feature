Feature: On calling GET Consent Handle request API, verify that on sending consent handle request as an alternate FIU
  for a valid handle of regular FIU.

  Scenario: 1025_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request. Use the valid consentHandle and send the consent handle request as alternate FIU.
  Verify that the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the Error code is InvalidConsentHandle.
    And  Verify that the version is supported version.