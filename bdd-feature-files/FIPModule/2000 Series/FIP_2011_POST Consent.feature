Feature: On Calling POST Consent request with invalid FIDataRange and check if it is responding
  with HTTP status code 400 (Bad request)

  Scenario: 2011_1 Pick a single user account with first supported FIType, do the prerequisite requests and
  then try the following. Send POST Account Consent request, Response validation for invalid FIDataRange
  (From time is greater than To Time). Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.