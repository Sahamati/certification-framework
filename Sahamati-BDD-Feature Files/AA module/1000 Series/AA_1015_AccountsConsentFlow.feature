Feature: On calling GET Consent Handle request API, verify that on sending a valid consent handle request,
  the success response is received.

  Scenario: 1015_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Set the Post consent response on Mock FIP. Send a valid consent request for linked Account, send the consent
  handle request to receive PENDING status. Ask the user to approve the consent and confirm. Send a valid consent
  handle request. Verify that the success response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the request and response of ConsentHandle are matching.
    And  Verify that the ConsentStatus.id is a valid UUID string.
    And  Verify that the ConsentStatus.status is 'READY'.

  Scenario: 1015_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Set the Post consent response on Mock FIP. Send a valid consent request for non-linked Account, send the
  consent handle request to receive PENDING status. Ask the user to link an account, approve the consent
  and confirm. Send a valid consent handle request. Verify that the success response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the request and response of ConsentHandle are matching.
    And  Verify that the ConsentStatus.id is a valid UUID string.
    And  Verify that the ConsentStatus.status is 'READY'.


