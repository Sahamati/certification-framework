Feature: On calling POST FI Request API, verify that on sending FI request with +16 and -15 min variation in timestamp,
  the error response is received.

  Scenario: 2005_1 On calling the POST FI Request API, use the pre-generated consent details from settings. Send the
  request with future timestamp i.e. current time + 16 minutes in the timestamp field. Verify that HTTP status code 400
  is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is +16 minutes from current time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2005_2 On calling the POST FI Request API, use the pre-generated consent details from settings. Send the
  request with incorrect timestamp i.e. current time - 15 minutes in the timestamp field. Verify that HTTP status code 400
  is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is -15 minutes from current time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.