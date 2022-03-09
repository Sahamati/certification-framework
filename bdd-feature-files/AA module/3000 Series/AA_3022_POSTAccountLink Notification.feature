Feature: On calling POST Account Link Notification API, verify that on sending a valid account link notification request,
  the success response is received.

  Scenario: 3022_1 On calling POST Account Link Notification API, follow the below steps:
  1. Set the account link response with AuthenticatorType as DIRECT in mock FIP.
  2. Generate a random customer id.
  3. Ask the user to register the generated customer id and link to a specific account from mock FIP and confirm.
  4. Check that the account link request is received for the same account and customer id in mock FIP.
  5. Send a valid account link notification request.
    Given Calling the POST Account Link Notification API.
    When POST Account Link Notification API action is performed.
    Then Verify that the response code displayed is HTTP 200.