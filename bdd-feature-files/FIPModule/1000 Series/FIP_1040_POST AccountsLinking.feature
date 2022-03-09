Feature: On Calling POST Account Link API  Verify that on sending account link request as alternate
  AA with details of regular AA, error response is received

  Scenario: 1040_1 Use the user with single account in first supported FIType and generate a valid account link
  request for regular AA. Send Account Link request as alternate AA with valid details of regular AA. Verify that
  HTTP 400 is displayed in response.
    Given  Calling the POST Account Link Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.