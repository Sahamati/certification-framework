Feature: On Calling FI Fetch request for consent that is not active and check if it is responding
  with HTTP status code 403 (Forbidden)

  Scenario: 3018_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request. Set Fi/notification response on mock server. send FI request,
  wait for FI Ready notification and then try the following. Send FI Fetch request after pausing consent using
  the consent notification. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentPaused.
    And Verify that the version is supported version.

  Scenario: 3018_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request. Set Fi/notification response on mock server. send FI request,
  wait for FI Ready notification and then try the following. Send FI Fetch request after expiring consent
  using the consent notification. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentExpired.
    And Verify that the version is supported version.

  Scenario: 3018_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request. Set Fi/notification response on mock server. send FI request,
  wait for FI Ready notification and then try the following. Send FI Fetch request aafter revoking consent
  using the consent notification. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentRevoked.
    And Verify that the version is supported version.

  Scenario: 3018_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request. Set Fi/notification response on mock server. send FI request,
  wait for FI Ready notification and then try the following. Send Consent request that expires in 5 min,
  send FI request, wait for FI ready notification, wait for 5 min and then send FI request and FI fetch
  request for the expired consent. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentExpired.
    And Verify that the version is supported version.