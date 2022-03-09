Feature: On Calling POST Consent request with one valid account and one invalid accounts in account
  object and check if it is responding with HTTP status code 400 (Bad Request)

  Scenario: 2010_1 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request with Response validation one valid account for
  non linked account for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_2 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request with response validation for linked account with
  valid details but incorrect fiType for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_3 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request for response validation for linked account but
  changed fipId for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_4 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request for response validation for linked account but
  changed account type for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_5 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request for response validation for linked account but
  changed linkRefNumber for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_6 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request for response validation for linked account but
  changed to non masked account number for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_7 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request for response validation for linked account but
  changed to masked incorrect account number for negative testcase. Verify that HTTP 400 is displayed in
  response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2010_8 Pick a user account which has 3 account in first supported FIType, do the prerequisite
  requests(link first two accounts) and in accounts array use a valid account in first entry and for second
  entry try the following. Send POST Account Consent request for response validation for one linked account
  and one delinked account for negative testcase. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.