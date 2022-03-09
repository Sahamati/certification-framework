Feature: On Calling POST Consent request as regular AA with selected details of alternate AA, error
  response is received

  Scenario: 2030_1 Use the pre-linked user details from settings, generate one valid consent post request
  for regular AA and try the following variations while sending the request as regular AA. Prerequisite: Do
  an account discover request for user with two account, send a valid account link request for discovered
  account, get the received OTP from user, send a valid account link token request(Do all above as alternate
  AA). Send POST Account Consent request with alternate customer id. Verify that HTTP 400 is displayed
  in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2030_2 Use the pre-linked user details from settings, generate one valid consent post request
  for regular AA and try the following variations while sending the request as regular AA. Prerequisite: Do
  an account discover request for user with two account, send a valid account link request for discovered
  account, get the received OTP from user, send a valid account link token request(Do all above as alternate
  AA). Send POST Account Consent request with alternate data consumer id. Verify that HTTP 400 is displayed
  in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2030_3 Use the pre-linked user details from settings, generate one valid consent post request
  for regular AA and try the following variations while sending the request as regular AA. Prerequisite: Do
  an account discover request for user with two account, send a valid account link request for discovered
  account, get the received OTP from user, send a valid account link token request(Do all above as alternate
  AA). Send POST Account Consent request with account of alternate AA. Verify that HTTP 400 is displayed
  in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2030_4 Use the pre-linked user details from settings, generate one valid consent post request
  for regular AA and try the following variations while sending the request as regular AA. Prerequisite: Do
  an account discover request for user with two account, send a valid account link request for discovered
  account, get the received OTP from user, send a valid account link token request(Do all above as alternate
  AA). Send POST Account Consent request with one account of regular AA and one account of alternate AA.
  Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2030_5 Use the pre-linked user details from settings, generate one valid consent post request
  for regular AA and try the following variations while sending the request as regular AA. Prerequisite: Do
  an account discover request for user with two account, send a valid account link request for discovered
  account, get the received OTP from user, send a valid account link token request(Do all above as alternate
  AA). Send POST Account Consent request with two accounts of alternate AA. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2030_6 Use the pre-linked user details from settings, generate one valid consent post request
  for regular AA and try the following variations while sending the request as regular AA. Prerequisite: Do
  an account discover request for user with two account, send a valid account link request for discovered
  account, get the received OTP from user, send a valid account link token request(Do all above as alternate
  AA). Send POST Account Consent request with one account of regular AA and two accounts of alternate AA.
  Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.