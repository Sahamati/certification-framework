Feature: On calling FIP and FIU Notifications request API, verify that on user changing the consent status, status
  change is notified to all the involved FIPs.

  Scenario: 1036_1 On calling FIP and FIU Notifications request API, use the pre-linked user details from settings.
  and set the POST consent response on regular and alternate mock server. Send a valid consent request.
  Ask the user to approve the consent with one account from regular and alternative mock FIP each and confirm.
  Send a valid consent handle and send a consent GET request. Get the POST consent request received on the mock
  FIP application. Set the consent notification response on regular and alternate mock server. Ask the user to
  pause the consent in the AA app, get the request received in the regular mock FIP and alternate mock FIP and
  validate.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that the field of version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the txnid id is a valid UUID.
    And  Verify that the Notifier type is AA.
    And  Verify that the Notifier id is the proper id of the testing AA.
    And  Verify that the ConsentStatusNotification consentId is matching the consentId received in FIP POST
         Consent request.
    And  Verify that the ConsentStatusNotification consentStatus is matching according to the user action.

  Scenario: 1036_2 On calling FIP and FIU Notifications request API, use the pre-linked user details from settings.
  and set the POST consent response on regular and alternate mock server. Send a valid consent request.
  Ask the user to approve the consent with one account from regular and alternative mock FIP each and confirm.
  Send a valid consent handle and send a consent GET request. Get the POST consent request received on the mock
  FIP application. Set the consent notification response on regular and alternate mock server. Ask the user to
  resume the consent in the AA app, get the request received in the regular mock FIP and alternate mock FIP and
  validate.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that the field of version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the txnid id is a valid UUID.
    And  Verify that the Notifier type is AA.
    And  Verify that the Notifier id is the proper id of the testing AA.
    And  Verify that the ConsentStatusNotification consentId is matching the consentId received in FIP POST
         Consent request.
    And  Verify that the ConsentStatusNotification consentStatus is matching according to the user action.

  Scenario: 1036_3 On calling FIP and FIU Notifications request API, use the pre-linked user details from settings.
  and set the POST consent response on regular and alternate mock server. Send a valid consent request.
  Ask the user to approve the consent with one account from regular and alternative mock FIP each and confirm.
  Send a valid consent handle and send a consent GET request. Get the POST consent request received on the mock
  FIP application. Set the consent notification response on regular and alternate mock server. Ask the user to
  revoke the consent in the AA app, get the request received in the regular mock FIP and alternate mock FIP and
  validate.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that the field of version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
         current time stamp.
    And  Verify that the txnid id is a valid UUID.
    And  Verify that the Notifier type is AA.
    And  Verify that the Notifier id is the proper id of the testing AA.
    And  Verify that the ConsentStatusNotification consentId is matching the consentId received in FIP POST
         Consent request.
    And  Verify that the ConsentStatusNotification consentStatus is matching according to the user action.