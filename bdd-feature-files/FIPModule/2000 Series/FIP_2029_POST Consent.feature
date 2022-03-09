Feature: On Calling POST Consent request as regular AA with valid signedConsent of alternate AA
  signed using alternate AA keys, error response is received

  Scenario: 2029_1 Use a single user account with first supported FIType.Do an account discover request as
  alternate AA, send a valid account link request for discovered account as alternate AA, get the received
  OTP from user, send a valid account link token request as alternate AA. Generate one valid consent post
  request, generate the valid singedConsent for alternate AA signed using alternate AA keys. Send POST
  Account Consent request as regular AA with valid signedConsent of alternate AA signed using alternate AA
  keys. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.