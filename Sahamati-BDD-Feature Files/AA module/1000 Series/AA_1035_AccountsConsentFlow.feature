Feature: On calling FIP and FIU Notifications POST request API, Verify that on user approving consent with accounts from
  multiple FIPs, one consent is generated for each FIP grouping only accounts belonging to that FIP.

  Scenario: 1035_1 On calling FIP and FIU Notifications POST request API, use the pre-linked user details from
  settings and send a valid consent request. Set the post consent response on regular and alternate mock server.
  Ask the user to approve the consent with two accounts from regular and three accounts from alternative mock FIP
  and confirm. Send a valid consent handle and send a consent GET request. Get the POST consent request received
  on the regular mock FIP application.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify the ConsentId is a valid UUID and is different from the one received in the  AA consent GET response
         and other mock FIP POST consent request.
    And  Verify that the status displayed is ACTIVE.
    And  Verify that the createTimestamp is sent within time consent POST request and current time.
    And  Verify that the ConsentDetail object fields are matching the values sent in the consent GET request except
         for the accounts object array.
    And  Verify that the consentDetailDigitalSignature is the proper signature as per the specification.
    And  Verify that the consentUse object is matching the ConsentUse received in the consent GET request.

  Scenario: 1035_2 On calling FIP and FIU Notifications POST request API, use the pre-linked user details from
  settings and send a valid consent request. Set the post consent response on regular and alternate mock server.
  Ask the user to approve the consent with two accounts from regular and three accounts from alternative mock FIP
  and confirm. Send a valid consent handle and send a consent GET request. Get the POST Consent request received
  on the alternate mock FIP application.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify the ConsentId is a valid UUID and is different from the one received in the  AA consent GET response
         and other mock FIP POST consent request.
    And  Verify that the status displayed is ACTIVE.
    And  Verify that the createTimestamp is sent within time consent POST request and current time.
    And  Verify that the ConsentDetail object fields are matching the values sent in the consent GET request except
         for the accounts object array.
    And  Verify that the consentDetailDigitalSignature is the proper signature as per the specification.
    And  Verify that the consentUse object is matching the ConsentUse received in the consent GET request.