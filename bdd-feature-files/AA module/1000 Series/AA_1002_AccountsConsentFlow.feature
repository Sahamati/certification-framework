Feature:On calling POST Accounts Consent Flow API, verify that on sending the consent request with basic invalid values
  for each required field, the success response is received.

  Scenario: 1002_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send multiple requests for one required field set to null each time. Verify that the error response
  is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed according to fields.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1002_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send multiple requests for one required field set to empty string each time. Verify that the error response
  is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed according to fields.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1002_3 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send multiple requests for one enum field set to non enum value each time. Add an extra character at the
  end of last enum & remove the last char at the end of first enum. Verify that the error response is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed according to fields.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1002_4 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send multiple requests for one array field set to empty array each time. Verify that the error response
  is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed according to fields.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1002_5 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send multiple requests for one object field set to empty object each time. Verify that the error response
  is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed according to fields.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1002_6 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send multiple requests for one integer field set to fraction value each time. Verify that the error response
  is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is followed according to fields.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.