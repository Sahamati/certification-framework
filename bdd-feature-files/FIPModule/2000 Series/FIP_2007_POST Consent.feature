Feature: On Calling POST Consent request with incorrect DataConsumer id and DataProvider id and
  check if it is responding with HTTP status code 400 (Bad request)

  Scenario: 2007_1 Use the pre-linked user details from settings. Send POST Account Consent request as valid
  aa, but with another aa id in DataConsumer objects id field. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_2 Use the pre-linked user details from settings. Send POST Account Consent request by adding
  extra character in valid DataConsumer id in DataConsumer objects id field in request body. Verify that
  HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_3 Use the pre-linked user details from settings. Send POST Account Consent request by
  removing last character from valid DataConsumer id in DataConsumer objects id field in request body. Verify
  that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_4 Use the pre-linked user details from settings. Send POST Account Consent request as one
  valid aa, but with another fip id in DataProvider objects id field in request body. Verify that HTTP 400
  is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_5 Use the pre-linked user details from settings. Send POST Account Consent request by adding
  extra character in valid DataProvider id in DataProvider objects id field in request body. Verify that HTTP
  400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2007_6 Use the pre-linked user details from settings. Send POST Account Consent request by removing
  last character from valid DataProvider id in DataProvider objects id field in request body. Verify that
  HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.