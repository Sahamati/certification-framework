Feature: On Calling POST FI Request with valid details and check if it is responding with
  success (HTTP status code 200)

  Scenario: 3001_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, and send one valid consent post request and then send the FI request. Send POST Account FIRequest
   with all valid details. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.
    And Verify that the version is supported version.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And Verify that the txnid id of request and response should match.
    And Verify that consentId of request and response should match