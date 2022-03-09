Feature: On calling POST FI Request API, verify that on sending FI request with incorrect timestamp formats, the error
  response is received.

  Scenario: 2003_1 On calling the POST FI Request API, use the pre-generated consent details from settings. Send the
  2 to 3 incorrect timestamp formats for each timestamp field that are not followed in the specification. Verify that
  HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2003_2 On calling the POST FI Request API, use the pre-generated consent details from settings. Add an
  extra character at the end of proper timestamp. Verify that HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the reponse code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.