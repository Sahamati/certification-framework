Feature: On calling POST FI Request API, verify that on sending FI request with invalid FIDataRange object, the error
  response is received.

  Scenario: 2007_1 On calling the POST FI Request API, use the pre-generated consent details from settings. On
  FIDataRange object, set the 'From Time' to greater than 'To Time'. Verify that the HTTP status code 400
  is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_2 On calling the POST FI Request API, use the pre-generated consent details from settings. Use the date
  range that is before FIDataRange of consent. Verify that the HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_3 On calling the POST FI Request API, use the pre-generated consent details from settings. Use the date
  range that is after FIDataRange of consent. Verify that the HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_4 On calling the POST FI Request API, use the pre-generated consent details from settings.
  Use the 'From Time' before the consent FIDataRange, and the 'To Time' within the consent FIDataRange. Verify that the
  HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_5 On calling the POST FI Request API, use the pre-generated consent details from settings.
  Use the 'From Time' within the consent FIDataRange, and the 'To Time' after the consent FIDataRange. Verify that the
  HTTP status code 400 is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidDateRange.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.