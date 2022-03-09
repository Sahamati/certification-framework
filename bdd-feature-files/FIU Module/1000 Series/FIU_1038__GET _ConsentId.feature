Feature: On calling GET Consent Id API, verify that on responding with invalid signedConsent for consent GET request,
  consent generation failure is communicated to FIU SPOC

  Scenario: 1038_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response with unsigned consentDetails in signedconsent.
  Send the Consent notification request with status as ACTIVE. Check consent or id request is received at mock
  server. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1038_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by adding an extra key to the consent detail,
  and generate the signeConsent. Send the Consent notification request with status as ACTIVE. Check consent or id
  request is received at mock server. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.

  Scenario: 1038_3 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response by removing one mandatory field, and generate
  the signedconsent. Send the Consent notification request with status as ACTIVE. Check consent or id request is
  received at mock server. Ask the user if failure message has been notified. Verify that the consent generation
  failure is communicated to FIU SPOC.
    Given Calling the GET Consent Id API
    When  GET action is performed.
    Then  Verify that the consent generation failure is communicated to FIU SPOC.