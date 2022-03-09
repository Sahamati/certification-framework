Feature: On Calling POST Account discovery API  and valid details with incorrect version and check
  if it is responding with error response

  Scenario: 1029_1 Send Account discovery request with incorrect version number 10 in ver field of request body.
  Verify that HTTP 404 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.