Feature: Verify that on sending FI request with invalid api key, error response is received

  Scenario: 3026_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but without
  aa_api_key header. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but with empty
  string in aa_api_key header. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but with 0 in
  aa_api_key header. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by removing
  last character from valid aa_api_key component 1. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_5 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by adding
  extra character at the end in valid aa_api_key component 1. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_6 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by removing
  last character from valid aa_api_key component 2. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_7 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by adding
  extra character at the end in valid aa_api_key component 2. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_8 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by removing
  last character from valid aa_api_key component 3. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.

  Scenario: 3026_9 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by adding
  extra character at the end in valid aa_api_key component 3. Verify that HTTP 401 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 401 is displayed.
