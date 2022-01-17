Feature: On calling GET Consent Id API, verify that on responding with invalid createTimestamp for consent GET request,
  consent generation failure is communicated to FIU SPOC.

  Scenario: 1037_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by creating Timestamp with invalid date format.
  Send the consent notification request with status ACTIVE. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When GET action is performed.
    Then Verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1037_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by creating Timestamp with +1 day variation.
  Send the consent notification request with status ACTIVE. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When GET action is performed.
    Then Verify that the consent generation failure is communicated to FIU SPOC.