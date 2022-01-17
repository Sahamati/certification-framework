Feature: On calling POST FI Request API, verify that on sending FI request with invalid format txnid, the error
  response is received.

  Scenario: 2006_1 On calling the POST FI Request API, use the pre-generated consent details from settings. In the
  txnid field, generate a UUID string and add an extra character at the end. Verify that HTTP status code 400
  is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2006_2 On calling the POST FI Request API, use the pre-generated consent details from settings. In the txnid
  field, generate a UUID string and remove last character at the end. Verify that HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
  time stamp.
    And Verify that the error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.