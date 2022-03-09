Feature: On calling GET FI fetch Request API, verify that on sending a FI fetch request with invalid sessionId, the
  error response is received.

  Scenario: 2028_1 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Send the FI
  fetch request. Use an empty session id to receive 404.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 404.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidSessionId.
    And Verify that the version is supported version.

  Scenario: 2028_2 GET FI fetch Request API,, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Send the FI
  fetch request. Use a random session id.
    Given Calling the GET FI fetch Request API,.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidSessionId.
    And Verify that the version is supported version.

  Scenario: 2028_3 GET FI fetch Request API,, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Send the FI
  fetch request. Use the valid session id and add an extra character at the end.
    Given Calling the GET FI fetch Request API,.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidSessionId.
    And Verify that the version is supported version.

  Scenario: 2028_4 GET FI fetch Request API,, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Send the FI
  fetch request. Use the valid session id and remove last character.
    Given Calling the GET FI fetch Request API,.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidSessionId.
    And Verify that the version is supported version.