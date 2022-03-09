Feature: On Calling Account de-link request with valid details and check if it is responding with a valid
  response code and JSON structure

  Scenario: 1041_1 On Calling DELETE Accounts link, Send Account de-link token request with all valid details.
  Verify that HTTP 200 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When   action is performed.
    Then  Verify that the Response code 200 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.
    And Verify that customerAddress and linkRefNumbershould match the values sent in the request
    And status should be DELINKED