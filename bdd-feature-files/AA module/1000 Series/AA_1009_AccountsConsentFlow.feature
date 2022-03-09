Feature: On calling POST Accounts Consent Flow API, verify that on sending the consent request with invalid Customer id,
  the error response is received.

  Scenario: 1009_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the invalid format in the Customer id field. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidCustomerAddress.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1009_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the proper customer identifier with last character removed at proper AA identifier. Verify that the error
  response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidCustomerAddress.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1009_3 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the proper customer identifier with one extra character added at end at proper AA identifier. Verify that
  the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidCustomerAddress.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1009_4 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the proper customer identifier at proper AA identifier with last character removed. Verify that
  the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidCustomerAddress.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1009_5 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the proper customer identifier at proper AA identifier with one character added at the end. Verify that
  the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidCustomerAddress.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1009_6 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Ask the user to register a new customer, and validate that the consent is sending the 200 response and then
  ask the user to deregister it. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidCustomerAddress.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.