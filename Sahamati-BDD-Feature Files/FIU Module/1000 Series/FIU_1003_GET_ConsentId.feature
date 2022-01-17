Feature:On calling GET Consent Id API, verify that Consent Id request received at
  AA is the valid Consent Id.

  Scenario: 1003_1 Set the Consent post request response and the consent handle request response with
            'PENDING' status on Mock AA. Ask the user to raise the consent request on MOCK AA and verify
            that the consent request is received at AA. Set the Consent get request response on Mock AA
            and send the consent notification with "Active" status, wait to receive the consent id get
            request at AA. Verify the consent id with the consent id set in consent notification API.
    Given Calling the GET Consent Id API.
    When GET action is performed.
    Then Verify that the Consent Id received in Mock is equal to the consent id set in response.



