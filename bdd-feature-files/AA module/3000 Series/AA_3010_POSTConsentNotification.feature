Feature: On calling POST Consent Notification API, verify that on sending consent notification request as alternate
  FIP with consent details of regular FIP, the error response is received.

  Scenario: 3010_1 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  ready status. Send a consent GET request and finally send a consent notification request. Send the consent
  notification request as alternate FIP with valid consent details of regular FIP and expect the 400 in response.
    Given Calling the POST Consent Notification API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3010_2 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  ready status. Send a consent GET request and finally send a consent notification request. Use the consent details of
  the regular FIP, and change the Notifier.id to alternate FIP id and send request as alternate FIP id and expect the
  400 in response.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is  InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.