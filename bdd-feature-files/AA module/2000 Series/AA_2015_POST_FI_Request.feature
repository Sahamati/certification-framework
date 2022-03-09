Feature: On calling POST FI Request API, verify that on sending FI request when consent is revoked, the error response
  is received.

  Scenario: 2015_1 On calling the POST FI Request API, use the pre-generated consent details from settings. Use the
  pre-linked user details from settings, and send a valid consent request. Ask the user to approve the consent and
  confirm. Send a valid consent handle to receive READY status and ask the user to revoke the consent and confirm.
  Send a consent GET request to receive status as REVOKED and send a FI request. Verify that the HTTP status code 400
  is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidConsentStatus.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.