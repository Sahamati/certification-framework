Feature: On calling POST Consent Notification API, verify that on sending consent notification request with invalid
  timestamp, the error response is received.

  Scenario: 3005_1 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  ready status. Send a consent GET request and finally send a consent notification request and generate a new UUID,
  and add an extra character at the end.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3005_2 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  ready status. Send a consent GET request and finally send a consent notification request and generate a new UUID,
  and remove the last character.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
  time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.