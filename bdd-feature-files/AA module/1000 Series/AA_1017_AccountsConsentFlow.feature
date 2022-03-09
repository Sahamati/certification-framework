Feature: On calling GET Consent Handle request API, verify that on sending consent handle request for consent with
  non linked FITypes, FAILED consent status is received.

  Scenario: 1017_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request for linked Account and send the consent handle request to receive PENDING status.
  Ask the user to reject the consent and confirm. Send a valid consent handle request. Verify that the
  FAILED consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And Verify that the ConsentStatus.status is FAILED.

  Scenario: 1017_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request for non-linked FIType and send the consent handle request to receive PENDING status.
  Ask the user to link an account, reject the consent and confirm. Send a valid consent handle request.
  Verify that the FAILED consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And Verify that the ConsentStatus.status is FAILED.

  Scenario: 1017_3 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a valid consent request for non-linked FIType and send the consent handle request to receive PENDING status.
  Ask the user to reject the consent and confirm. Send a valid consent handle request. Verify that the
  FAILED consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And Verify that the ConsentStatus.status is FAILED.
