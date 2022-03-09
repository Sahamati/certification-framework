Feature: On Calling POST FI Request with valid details but incorrect version and check if it is
  responding with HTTP status code 404

  Scenario: 3004_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  incorrect version number 10 in ver field of request body. Verify that HTTP 404 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 404 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.