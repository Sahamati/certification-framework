Feature: On calling POST Consent Notification API, verify that on responding with + or - 15 min variation in timestamp for
  consent GET request, the consent generation failure is communicated to FIU SPOC.

  Scenario: 1032_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response with future timestamp(current time + 15 minutes).
  Send the consent notification request with status as ACTIVE. Ask the user if the failure message has been notified.
  Verify that the failure message is communicated to FIU SPOC.
    Given Calling the GET Consent Handle ID API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.

  Scenario: 1032_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent get response with expired timestamp(current time - 15 minutes).
  Send the consent notification request with status as ACTIVE. Ask the user if the failure message has been notified.
  Verify that the failure message is communicated to FIU SPOC.
    Given Calling the GET Consent Handle ID API
    When GET action is performed.
    Then Verify that the failure message is notified to FIU SPOC.