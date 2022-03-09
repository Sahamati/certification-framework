Feature: On Calling POST Consent Notification request with valid details but incorrect version and
  check if it is responding with HTTP status code 404

  Scenario: 2022_1 Send POST Consent Notification request with valid details but incorrect version(10). Verify
  that HTTP 404 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.