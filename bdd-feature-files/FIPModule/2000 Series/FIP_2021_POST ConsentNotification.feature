Feature: On Calling POST Consent Notification request with 15 min variation from current timestamp
  and check if it is responding with HTTP status code 400 (Bad request)

  Scenario: 2021_1 Send consent notification request with Invalid Timestamp of +15 min variation from
  current timestamp. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2021_1 Send consent notification request with Invalid Timestamp of -15 min variation from
  current timestamp. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.