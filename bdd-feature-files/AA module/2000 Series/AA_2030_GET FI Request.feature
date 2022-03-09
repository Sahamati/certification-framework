Feature: On calling GET FI fetch Request API, verify that on sending FI fetch request before receiving the FI ready
  notification, the error response is received.

  Scenario: 2030_1 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is NoDataFound.
    And Verify that the version is supported version.