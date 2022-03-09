Feature: On Calling POST Account Link API  with valid account details of two different users and check
  if it is responding with error response

  Scenario: 1038_1 Send Account Link request with Account Details of two different Users Sent in a single Request.
  Verify that HTTP 404 is displayed in response.
    Given  Calling the POST Account Link Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is AccountNotFound.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.