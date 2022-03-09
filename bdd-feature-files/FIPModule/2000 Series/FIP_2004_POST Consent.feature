Feature: On Calling POST Consent request with a non UUID string for consent id and check if it
  is responding with HTTP status code 400 (Bad request)

  Scenario: 2004_1 Use the pre-linked user details from settings. Send POST Account Consent request with invalid UUID
  string bd66-cc37-4d5d-9664-31a4 in consentId field of request body. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.