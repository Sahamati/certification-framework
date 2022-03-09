Feature: On Calling FI Fetch request with invalid session id and check if it is responding with
  HTTP status code 400 (Bad request)

  Scenario: 3011_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request.Set Fi/Notification response on mock server. Send the FI
  request, wait for FI ready notification then try the following for FI/fetch/{id} request. Send FI Fetch
  request with an empty session id. Verify that HTTP 404 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidSessionId.
    And Verify that the version is supported version.

  Scenario: 3011_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request.Set Fi/Notification response on mock server. Send the FI
  request, wait for FI ready notification then try the following for FI/fetch/{id} request. Send FI Fetch
  request with random session id. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidSessionId.
    And Verify that the version is supported version.