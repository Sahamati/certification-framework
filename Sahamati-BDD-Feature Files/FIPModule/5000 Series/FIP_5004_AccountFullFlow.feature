Feature:On calling Full Flow APIs except account discovery and consent notification, Send the account link
  request,and account link token request. Set the Consent notification response in mock server, and in consent
  post request. Set the FI Notification response in Mock server. Send the FI request, wait for FI ready notification,
  send the FI fetch request, and finally delink the account request in sequence for user with three accounts in all
  supported FITypes and check that all APIs are responding with success response. Verify that the response code
  of all APIs is 200.

  Scenario: 5004_1 On calling Full Flow APIs, send the request with first account of user having three account
  for All FIType. Verify that the HTTP status code 200 is received in response.
    Given Calling the Full Flow APIs.
    When Full Flow APIs action is performed.
    Then Verify that the reponse code of all APIs is 200.
    And  Verify that the Account link response AuthenticatorType is TOKEN. If TOKEN is not specified in supported
         AuthenticatorType settings, skip this test case by stating the reason.
    And  Verify that the Account link token response status is LINKED.
    And  Verify that the FI data matches the FIType schema.
    And  Verify that the Account delink response status is DELINKED.
    And  Verify that the RefNumber received in account link response is not repeated when variations are tried.
    And  Verify that the linkRefNumber received in account link token response is not repeated when variations are tried.
    And  Verify that the sessionId received in FI response is not repeated when variations are tried.
    And  Verify that the cryptoAlgo recevied in Fi fetch is the valid Algo.

  Scenario: 5004_2 On calling Full Flow APIs, send the request with first 2 accounts of user having three account
  for All FIType. Verify that the HTTP status code 200 is received in response.
    Given Calling the Full Flow APIs.
    When Full Flow APIs action is performed.
    Then Verify that the reponse code of all APIs is 200.
    And  Verify that the Account link response AuthenticatorType is TOKEN. If TOKEN is not specified in supported
         AuthenticatorType settings, skip this test case by stating the reason.
    And  Verify that the Account link token response status is LINKED.
    And  Verify that the FI data matches the FIType schema.
    And  Verify that the Account delink response status is DELINKED.
    And  Verify that the RefNumber received in account link response is not repeated when variations are tried.
    And  Verify that the linkRefNumber received in account link token response is not repeated when variations are tried.
    And  Verify that the sessionId received in FI response is not repeated when variations are tried.
    And  Verify that the cryptoAlgo recevied in Fi fetch is the valid Algo.

  Scenario: 5004_3 On calling Full Flow APIs, send the request  with user having three account for All FIType.
  Verify that the HTTP status code 200 is received in response.
    Given Calling the Full Flow APIs.
    When Full Flow APIs action is performed.
    Then Verify that the reponse code of all APIs is 200.
    And  Verify that the Account link response AuthenticatorType is TOKEN. If TOKEN is not specified in supported
         AuthenticatorType settings, skip this test case by stating the reason.
    And  Verify that the Account link token response status is LINKED.
    And  Verify that the FI data matches the FIType schema.
    And  Verify that the Account delink response status is DELINKED.
    And  Verify that the RefNumber received in account link response is not repeated when variations are tried.
    And  Verify that the linkRefNumber received in account link token response is not repeated when variations are tried.
    And  Verify that the sessionId received in FI response is not repeated when variations are tried.
    And  Verify that the cryptoAlgo recevied in Fi fetch is the valid Algo.