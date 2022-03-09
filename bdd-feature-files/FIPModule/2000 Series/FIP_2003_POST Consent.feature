Feature: On Calling POST Consent request with timestamp fields in different formats and check if
  it is responding with HTTP status code 400 (Bad request)

  Scenario: 2003_1 Use the pre-linked user details from settings and try 2 to 3 standard timestamp formats
  which is not followed in spec for each timestamp field. Send POST Consent request for timestamp format
  HH:mm:ss. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2003_2 Use the pre-linked user details from settings and try 2 to 3 standard timestamp formats
  which is not followed in spec for each timestamp field. Send POST Consent request ffor timestamp format
  YYYY MMM dd HH:mm:ss.SSS. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.