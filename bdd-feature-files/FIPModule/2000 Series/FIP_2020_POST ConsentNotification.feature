Feature: On Calling POST Consent Notification request with null values, empty string, empty array and
  not in enum values for each required field and check if it is responding with HTTP status code
  400 (Bad request)

  Scenario: 2020_1 On Calling POST Consent Notification request with null values set in required field.
  Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2020_2 On Calling POST Consent Notification request with Empty String values set in required
  field. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2020_3 On Calling POST Consent Notification request with enum fields values set in required
  field. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

