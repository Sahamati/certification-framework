Feature: On Calling FI Fetch request as alternate AA with session id of regular AA, error response
  is received

  Scenario: 3025_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with received session id as alternate mock AA. Send Account FI Fetch request with valid details of alternate
  AA and session id of regular AA. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidSessionId.
    And Verify that the version is supported version.