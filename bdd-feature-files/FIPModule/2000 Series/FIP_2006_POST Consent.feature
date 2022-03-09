Feature: On Calling POST Consent request with invalid consent span time and check if it is responding
  with HTTP status code 400 (Bad request)

  Scenario: 2006_1 Use the pre-linked user details from settings. Send POST Account Consent request with
  consentStart time which is after consentExpiry time(consentExpiry + 2 days) in consentStart field. Verify
  that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2006_2 Use the pre-linked user details from settings. Send POST Account Consent request with same
  consentStart time and consentExpiry time(consentExpiry = consentStart) in consentStart and consentExpiry
  fields. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.