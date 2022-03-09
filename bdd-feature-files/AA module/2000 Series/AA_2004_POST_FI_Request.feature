Feature: On calling POST FI Request API, verify that on sending FI request with incorrect version, the error
  response is received.

  Scenario: 2004_1 On calling the POST FI Request API, use the pre-generated consent details from settings. Use the
  incorrect version number from settings. Verify that HTTP status code 404(Not Found) is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2004_2 On calling the POST FI Request API, use the pre-generated consent details from settings. Add an
  extra digit at the end of correct version number. Verify that HTTP status code 404(Not Found) is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2004_3 On calling the POST FI Request API, use the pre-generated consent details from settings. Remove the
  last character or digit at the end of correct version number. Verify that HTTP status code 404(Not Found) is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

