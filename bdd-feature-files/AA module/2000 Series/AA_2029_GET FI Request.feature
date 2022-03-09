Feature: On calling GET FI fetch Request API, verify that on sending the FI fetch request as alternate FIU with
  sessionId of the regular FIU, the error response is received.

  Scenario: 2029_1 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Generate a
  valid FI fetch request for regular FIU with received sessionId and send the request as alternate FIU.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidSessionId.
    And Verify that the version is supported version.