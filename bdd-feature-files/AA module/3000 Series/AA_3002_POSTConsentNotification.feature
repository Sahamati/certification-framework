Feature: On calling POST Consent Notification API, verify that on sending consent notification request with basic invalid
  values for each required field, the error response is received.

  Scenario: 3002_1 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the POST
  consent response in FIP mock server. Send a valid consent request and ask the user to approve the consent and confirm.
  Send a valid consent handle to receive ready status. Send a consent GET request and finally send a consent
  notification request with each time one required field set to null.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the Error code is followed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3002_2 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the POST
  consent response in FIP mock server. Send a valid consent request and ask the user to approve the consent and confirm.
  Send a valid consent handle to receive ready status. Send a consent GET request and finally send a consent
  notification request with each time one required field set to empty string.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the Error code is followed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3002_3 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the POST
  consent response in FIP mock server. Send a valid consent request and ask the user to approve the consent and confirm.
  Send a valid consent handle to receive ready status. Send a consent GET request and finally send a consent
  notification request with each time one enum field set to non enum value. Add an extra character at the end of last
  enum and remove the last character at the end of first enum.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the Error code is followed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3002_4 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the POST
  consent response in FIP mock server. Send a valid consent request and ask the user to approve the consent and confirm.
  Send a valid consent handle to receive ready status. Send a consent GET request and finally send a consent
  notification request with each time one array field set to empty array.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the Error code is followed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3002_5 On calling POST Consent Notification API, use the pre-linked user details from settings. Set the POST
  consent response in FIP mock server. Send a valid consent request and ask the user to approve the consent and confirm.
  Send a valid consent handle to receive ready status. Send a consent GET request and finally send a consent
  notification request with each time one object field set to empty object.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the Error code is followed as per fields.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.