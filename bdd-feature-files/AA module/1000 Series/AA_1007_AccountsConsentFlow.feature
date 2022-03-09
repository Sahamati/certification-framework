Feature:On calling POST Accounts Consent Flow API, verify that on sending consent request with invalid consent
  span, the error response is received.

  Scenario: 1007_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the consentStart time, that is greater than consentExpiry time. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1007_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the consentStart time and consentExpiry time as same. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.