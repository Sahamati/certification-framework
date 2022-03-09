Feature: On Calling POST Consent request  with invalid ConsentUse and check if it is responding
  with HTTP status 400 (Bad request)

  Scenario: 2015_1 Use the pre-linked user details from settings and then try the following. Send POST
  Account Consent request for Invalid ConsentUse Details with fetchType as ONETIME, count as 2. Verify that
  HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2015_2 Use the pre-linked user details from settings and then try the following. Send POST
  Account Consent request for Invalid ConsentUse Details by using future TimeStamp in lastUseDateTime. Verify
  that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.