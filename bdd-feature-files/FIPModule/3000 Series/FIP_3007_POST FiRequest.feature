Feature: On Calling POST FI Request with invalid FIDataRange object and check if it is responding
  with HTTP status code 400 (Bad request)

  Scenario: 3007_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  value of FIDataRange objects from field > FIDataRange objects to field. Verify that HTTP 400 is displayed
  in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3007_2 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  value of FIDataRange object in request < value of FIDataRange object of Consent. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3007_3 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  value of FIDataRange object in request > value of FIDataRange object of Consent. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3007_4 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  value of FIDataRange objects from field in request < value of FIDataRange object of Consent and value of
  FIDataRange objects to field in request between FIDataRange object of Consent. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3007_5 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  value of FIDataRange objects to field in request > value of FIDataRange object of Consent and value of
  FIDataRange objects from field in request between FIDataRange object of Consent. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.