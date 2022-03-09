Feature:On calling POST Accounts Consent Flow API, verify that on sending a valid consent request, the success
  response is received.

  Scenario: 1001_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send one valid consent post request for STORE and VIEW consentMode type. Verify that the success response
  is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the txnid id of request and response are matching.
    And  Verify that the customer.id matches with the ConsentDetail.Customer.id request.
    And  Verify that the ConsentHandle is a valid UUID string.
    And  Verify the the string is not repeated when the variations are tested.

  Scenario: 1001_2 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send one valid consent post request for each valid purpose object. Verify that the success response
  is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the txnid id of request and response are matching.
    And  Verify that the customer.id matches with the ConsentDetail.Customer.id request.
    And  Verify that the ConsentHandle is a valid UUID string.
    And  Verify the the string is not repeated when the variations are tested.

  Scenario: 1001_3 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings
  and send one valid consent post request for each valid unit of DataLife object i.e. '0'(Zero) is for VIEW
  and greater than '0'(Zero) is for STORE. Verify that the success response is received.
    Given Calling the POSTAccounts Consent Flow API.
    When POST action is performed.
    Then Verify that the reponse code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that the txnid id of request and response are matching.
    And  Verify that the customer.id matches with the ConsentDetail.Customer.id request.
    And  Verify that the ConsentHandle is a valid UUID string.
    And  Verify the the string is not repeated when the variations are tested.



