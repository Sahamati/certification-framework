Feature: On calling GET Consent Handle Id API, verify that on responding with invalid version for consent
  GET request, verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1031_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set consent get response with incorrect version number from settings. Send
  the consent notification request with status as ACTIVE. Ask the user if the failure message has been notified.
  Verify that the failure message is notified to FIU SPOC.
    Given Calling the GET Consent Handle ID API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.

  Scenario: 1031_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by adding an extra digit at the end of correct
  version number. Send the consent notification request with status as ACTIVE. Ask the user if the failure message has
  been notified. Verify that the failure message is notified to FIU SPOC.
    Given Calling the GET Consent Handle ID API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.

  Scenario: 1031_3 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by removing the last character or digit from
  valid version number. Send the consent notification request with status as ACTIVE. Ask the user if the failure
  message has been notified. Verify that the failure message is notified to FIU SPOC.
    Given Calling the GET Consent Handle ID API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.