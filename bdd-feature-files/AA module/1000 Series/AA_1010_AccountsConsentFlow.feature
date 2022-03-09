Feature: On calling POST Accounts Consent Flow API, verify that on sending consent request with invalid purpose object,
  the error response is received.

  Scenario: 1010_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the invalid purpose code on purpose object e.g. take the code 199 from internal settings. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is InvalidConsentPurpose.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1010_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Set the Invalid formatted URL in refUri. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 400 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  current time stamp.
    And Verify that the Error code is InvalidConsentPurpose.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.