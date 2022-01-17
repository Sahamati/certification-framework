Feature: On calling POST FI Request API, verify whether FI request fails if frequency of FI request is not according to
  consent approved frequency.

  Scenario: 2017_1 On calling the POST FI Request API, use the pre-generated consent details from settings. Send a
  valid consent request, ask the user to approve the consent and confirm. Send a valid consent handle to receive READY
  status and send a consent GET request. Set a valid FI and FI fetch response in mock FIP. Send the FI request and check
  the FI request is received in mock FIP. Send the FI notification with Status 'READY'. Wait for FI notification
  received at FIU with READY status. Send the FI Fetch request and Finally Send FI request again for each valid
  Frequency unit with value as 1.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 200 for first request.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidConsentUse.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2017_2 On calling the POST FI Request API, use the pre-generated consent details from settings. Send a
  valid consent request, ask the user to approve the consent and confirm. Send a valid consent handle to receive READY
  status and send a consent GET request. Set a valid FI and FI fetch response in mock FIP. Send the FI request and check
  the FI request is received in mock FIP. Send the FI notification with Status 'READY'. Wait for FI notification
  received at FIU with READY status. Send the FI Fetch request and Finally Send FI request again for each valid
  Frequency unit with value as 1.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400 for first request.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidConsentUse.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.