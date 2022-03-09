Feature: On Calling POST Consent request with invalid DataLife and check if it is responding with
  HTTP status 400 (Bad request)

  Scenario: 2012_1 Use the pre-linked user details from settings and then try the following for consentMode
  as STORE. Send POST Account Consent request, Response validation for Invalid DataLife Details with unit as
  DAY and value as 0. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2012_2 Use the pre-linked user details from settings and then try the following for consentMode
  as STORE. Send POST Account Consent request, Response validation for Invalid DataLife Details with unit
  as MONTH and value as 0. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2012_3 Use the pre-linked user details from settings and then try the following for consentMode
  as STORE. Send POST Account Consent request, Response validation for Invalid DataLife Details with unit
  as YEAR and value as 0. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2012_4 Use the pre-linked user details from settings and then try the following for consentMode
  as STORE. Send POST Account Consent request, Response validation for Invalid DataLife Details with unit
  as INF and value as 1. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.