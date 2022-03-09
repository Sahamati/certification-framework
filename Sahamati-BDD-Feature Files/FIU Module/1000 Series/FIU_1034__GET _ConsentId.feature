Feature: On calling GET Consent Id API, verify that on responding with status PAUSED for consent GET request,
  FIU system does not allow the FIU SPOC to request for FI.

  Scenario: 1034_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response with consent status as PAUSED.
  Send the consent notification request.  Ask user if is able to do data request. Verify that the FIU system does
  not allow the FIU SPOC to request for FI.
    Given Calling the GET Consent Id API
    When GET action is performed.
    Then Verify that the FIU system does not allow the FIU SPOC to request for FI.