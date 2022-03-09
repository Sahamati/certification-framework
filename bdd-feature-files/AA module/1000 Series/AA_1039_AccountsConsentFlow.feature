Feature: On calling FIP and FIU Notifications request API, verify that on user de-linking an account in AA app, de-link
  API of FIP is invoked correctly.

  Scenario: 1038_1 On calling FIP and FIU Notifications request API, Generate a random customer id, ask the user
  to register the generated customer id and link two accounts from mock FIP and confirm. Ask the user to de-link
  a particular account and confirm. Finally validate that the de-link request is received by mock FIP for that
  account.
    Given Calling the FIP and FIU Notifications request API.
    When GET action is performed.
    Then Verify that a de-link request is received by mock FIP for the delinked account.