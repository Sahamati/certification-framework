Feature: Verify that on sending valid FI fetch request of regular AA with JWS signature of regular AA
  and with API key of alternate AA, error response is received

  Scenario: 3027_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send valid FI fetch
  request with alternate AA api key. Send Account FI Fetch request with jws signature and details of regular
  AA but with aa api key of alternate aa. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.