Feature: On calling GET FI fetch Request API, verify that on sending FI fetch request when consent is expired, the
  error response is received.

  Scenario: 2033_1 GET FI fetch Request API, use the pre-linked user details from settings, and follow below steps:
  1. Send a valid consent request, which expires in next 5 minutes.
  2. Set the Post consent response in FIP mock server.
  3. Set the consent notification response in FIU mock server.
  4. Ask the user to approve the consent and confirm.
  5. Send a valid consent handle to receive READY status.
  6. Send a consent GET request.
  7. Set a valid FI response in mock FIP.
  8. Send a FI request to AA.
  9. Set a valid FI fetch response in mock FIP.
  10. Set the FI notification response on FIU mock server.
  11. Send a FI ready notification to AA.
  12. Wait to receive FI ready notification in mock FIU.
  13. Wait till the consent expires.
  14. Send a FI fetch request.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 403.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is ConsentExpired.
    And Verify that the version is supported version.

  Scenario: 2033_2 GET FI fetch Request API, use the pre-linked user details from settings, and follow below steps:
  1. Send a valid consent request, which expires in next 5 minutes.
  2. Set the Post consent response in FIP mock server.
  3. Set the consent notification response in FIU mock server.
  4. Ask the user to approve the consent and confirm.
  5. Send a valid consent handle to receive READY status.
  6. Send a consent GET request.
  7. Set a valid FI response in mock FIP.
  8. Set the FI notification response on FIU mock server.
  9. Send a FI request to AA.
  10. Send a FI ready notification to AA.
  11. Wait to receive FI ready notification in mock FIU.
  12. Wait till the consent expires.
  13. Send a FI fetch request.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 403.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the error code is ConsentExpired.
    And Verify that the version is supported version.