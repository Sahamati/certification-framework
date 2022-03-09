Feature: On calling POST FI notification request API, verify that on responding with invalid JWS signature for
  FI request, error response is received for FI notification request.

  Scenario: 2021_1 Set Post FI request response on Mock server for Pre Generated Consent details  with invalid
  JWS signature. Ask the user to do POST FI request to mock AA. Check that the Fi request is received at Mock AA.
  Send the valid FI notification request. Verify that the error response 400 is displayed in FI notification
  request.
    Given Calling the POST FI notification request API.
    When POST action is performed.
    Then Verify that the response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes
        from the current time stamp.
    And Verify that the Error code is InvalidSessionId.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.