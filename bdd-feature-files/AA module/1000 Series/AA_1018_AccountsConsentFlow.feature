Feature: On calling GET Consent Handle request API, verify that on sending the consent handle request for
  consent that is expired before approval or rejection, response with consent status FAILED is received.

  Scenario: 1018_1 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a consent request for linked FIType, which is valid only for 5 minutes. Send the consent handle request
  to receive the PENDING status, wait for 5 minutes. Send a valid consent handle request. Verify that the
  FAILED consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And Verify that the ConsentStatus.status is FAILED.

  Scenario: 1018_2 On calling GET Consent Handle request API, use the pre-linked user details from settings.
  Send a consent request for non-linked FIType, which is valid only for 5 minutes. Send the consent handle
  request to receive the PENDING status, wait for 5 minutes. Send a valid consent handle request. Verify that the
  FAILED consent status is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And Verify that the ConsentStatus.status is FAILED.