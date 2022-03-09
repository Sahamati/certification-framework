Feature: On Calling POST FI Request with non matching consent Id and digital signature, error
  response is received

  Scenario: 3023_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send two valid consent post request and then send the FI request with consent id of the first
  consent and digital signature of the second consent. Send POST Account FIRequest with non matching consent
  Id and digital signature. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.