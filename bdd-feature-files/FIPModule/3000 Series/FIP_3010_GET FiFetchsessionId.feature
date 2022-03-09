Feature: On Calling FI Fetch request with valid details and check if it is responding with
  success (HTTP status code 200)

  Scenario: 3010_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request.Set Fi/Notification response in mock server. send the FI
  request, wait to receive the FI ready notification and then send the valid FI fetch request. Send FI Fetch
  request with valid details. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 200 is displayed.
    And Verify that the version is supported version.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that FI -> fipID should be matching the current fip.
    And Verify that FI -> data array should have one object for every account as per the generated consent,
  linkRefNumber and maskedAccNumber sent in the consent request should exactly match FI -> data object.
    And Verify that FI -> KeyMaterial -> Signature should be properly generated using the FIP keys
    And Verify that FI -> data -> encryptedFI should be able to decrypt correctly and match the schema of
  the respective FI Type
    And CryptoAgo received in fi/fetch should be valid algorithm.