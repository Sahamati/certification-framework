Feature: On Calling POST FI Request as alternate AA with consent details of regular AA, error
  response is received

  Scenario: 3024_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request as regular mock AA, generate a valid FI request for regular
  mock AA and send the generated request as alternate mock AA. Send POST Account FIRequest as alternate AA
  with consent details of regular AA. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidConsentId.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.