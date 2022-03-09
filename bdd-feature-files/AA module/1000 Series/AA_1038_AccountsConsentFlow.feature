Feature: On calling FIP and FIU Notifications request API, verify that on user linking a new account in AA app,
  discover, link and token link APIs of FIP is invoked correctly.

  Scenario: 1038_1 On calling FIP and FIU Notifications request API, generate a random customer id, ask the user
  to register the generated customer id and discover the accounts in the mock FIP server in AA app and confirm.
  Validate that a proper discover account request is received in mock FIP. Ask the user to link a particular
  account and confirm. Validate that a proper link account request is received in the mock FIP. Generate a
  random OTP and ask the user to use that to complete the linking in the AA app and confirm. Validate a
  proper link token request with the correct OTP is received in mock FIP.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that a proper account discover request is received by mock FIP.
    And  Verify that a proper account link request is received by mock FIP.
    And  Verify that a proper account link token request with correct OPT is received by mock FIP.