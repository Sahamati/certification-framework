Feature: On calling GET Consent Id API, verify that on responding with different consentId for consent GET
  request, the consent generation failure is communicated to FIU SPOC.

  Scenario: 1033_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by removing the first character from consent Id.
  Send the consent notification request with status as ACTIVE. Ask the user if the failure message has been notified.
  Verify that the failure message is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.

  Scenario: 1033_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by removing the last character from consent Id.
  Send the consent notification request with status as ACTIVE. Ask the user if the failure message has been notified.
  Verify that the failure message is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.