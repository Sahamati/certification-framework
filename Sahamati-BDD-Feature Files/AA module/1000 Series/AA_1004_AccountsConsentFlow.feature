Feature:On calling POST Accounts Consent Flow API, verify that on sending consent request with incorrect version,
  the success response is received.

  Scenario: 1004_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Use the incorrect version number from settings. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 404 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1004_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Add an extra digit at the end of correct version number. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 404 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1004_3 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
  Remove the last character or digit at the end of correct version number. Verify that the error response is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 404 is received.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And Verify that the Error code is NoSuchVersion.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.