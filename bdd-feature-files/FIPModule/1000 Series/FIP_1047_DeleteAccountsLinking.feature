Feature: On Calling Account de-link request twice and check if it is responding success with DELINKED
  status for first request and HTTP status code 400 for second request

  Scenario: 1047_1 Send Account de-link request and check if it is responding with success.Verify that HTTP 200
  is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 1047_2 Send Account de-link request for second time. Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidLinkRefNumber.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.