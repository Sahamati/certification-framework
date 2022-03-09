Feature: On Calling FI Fetch request for a delinked account and check if it is responding with
  HTTP status code 400 (Bad Request)

  Scenario: 3020_1 Pick a single user account with first supported FIType, send account link request, send
  account token link request, set Consent/notification response in mock server, send consent post request.Set
  Fi/Notification response on mock server. send FI request, delink the account and then send one valid FI
  fetch request . Send FI Fetch request for delinked account. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.