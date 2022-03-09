Feature:On calling GET Consent Handle API, verify that Consent Handle request received at AA is the
        valid Consent handle and is equal to consent handle set in response.

  Scenario: 1002_1 Set the consent post request response in Mock AA, ask the user to raise the consent
            request in Mock AA and verify that the Consent Handle request is received at AA.
    Given Calling the GET Consent Handle API.
    When GET action is performed.
    Then Verify that the Consent Handle request is received at AA.
    And Verify that Consent Handle value received in Mock is equal to the consent handle set in
         response.
