Feature: On calling POST Consent Notification API, verify that on sending valid consent Notification
  with alternate AA consent details, error response is received.

  Scenario: 1015_1 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA and alternate Mock AA, and the
  send consent notification with valid Consent Handle of alternate AA. Verify that the error message is
  received.
    Given Calling the POST Consent Notification API
    When POST action is performed.
    Then Verify that the Response code 400 is displayed.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes
  from the current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.