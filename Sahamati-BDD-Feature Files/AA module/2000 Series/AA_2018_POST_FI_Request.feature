Feature: On calling POST FI Request API, Verify that on sending FI request twice for consent with fetchType as ONETIME,
  the error response is received for second request.

  Scenario: 2018_1 On calling the POST FI Request API, use the pre-linked user details from settings, send a valid
  consent request with fetchType as ONETime. Ask the user to approve the consent and confirm, send a valid consent
  handle to receive READY status, and send a consent GET request. Set a valid FI and FI fetch response in mock FIP
  and then send the FI request. Check that the FI request is received in mock FIP. Send the FI notification with Status
  'READY'. Wait for FI notification received at FIU with READY status. Send FI Fetch request and finally Send the FI
  request again.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the response code displayed is HTTP 400.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is InvalidConsentUse.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.