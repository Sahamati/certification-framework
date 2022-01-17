Feature: On calling POST Accounts Consent Flow API, verify that on sending the consent request with invalid
  DataFilter object, the error response is received.

  Scenario: 1014_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  use two entries in the DataFilter array, keep the first entry as valid entry i.e. TRANSACTIONAMOUNT = 2000 and
  the second entry as invalid entry i.e. TRANSACTIONAMOUNT = CREDIT. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the response code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1014_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  use two entries in the DataFilter array, keep the first entry as valid entry i.e. TRANSACTIONAMOUNT = 2000 and
  the second entry as invalid entry i.e. TRANSACTIONTYPE = 1000. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1014_3 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  use two entries in the DataFilter array, keep the first entry as valid entry i.e. TRANSACTIONAMOUNT = 2000 and
  the second entry as invalid entry i.e. TRANSACTIONAMOUNT == 1000 (Invalid operator). Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.