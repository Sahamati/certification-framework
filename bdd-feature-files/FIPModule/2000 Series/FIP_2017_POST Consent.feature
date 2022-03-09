Feature: On Calling POST Consent request with invalid Purpose and check if it is responding with
  HTTP status code 400 (Bad request)

  Scenario: 2017_1 Use the pre-linked user details from settings and try the following. Send POST Account Consent
  request with invalid Purpose Code: 199 in Purpose objects code field in request body. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2017_2 Use the pre-linked user details from settings and try the following. Send POST Account Consent
  request with invalid refUri: https://www.google.com in Purpose objects refUri field in request body. Verify
  that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.