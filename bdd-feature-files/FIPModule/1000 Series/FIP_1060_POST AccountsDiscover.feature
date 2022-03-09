Feature: On Calling POST Account discovery API Verify that on sending account discover request as
  alternate AA with customer id of regular AA, error response is received

  Scenario: 1060_1 Use a single account user with first supported FIType and send one valid account discover
  request as alternate AA with customer id of regular AA. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.