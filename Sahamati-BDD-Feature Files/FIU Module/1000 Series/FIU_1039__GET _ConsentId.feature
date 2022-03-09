Feature: On calling GET Consent Id API, verify that on responding with invalid signedConsent for consent GET request,
  consent generation failure is communicated to FIU SPOC

  Scenario: 1039_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by setting the count as an String value.
  Send the Consent notification request with status as ACTIVE. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1039_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by setting the count as alpha numerical value.
  Send the Consent notification request with status as ACTIVE. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1039_3 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by setting the lastUseDateTime date time with
  invalid date format. Send the Consent notification request with status as ACTIVE. Ask the user if failure message
  has been notified. Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1039_4 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by setting the lastUseDateTime greater than
  current time. Send the Consent notification request with status as ACTIVE. Ask the user if failure message has
  been notified. Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.