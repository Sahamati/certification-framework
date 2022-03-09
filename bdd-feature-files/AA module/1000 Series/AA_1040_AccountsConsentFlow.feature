Feature: On calling FIP and FIU Notifications request API, verify that on user de-registering from AA, de-link the
  API of FIP for all linked accounts is invoked.

  Scenario: 1040_1 On calling FIP and FIU Notifications request API, generate a random customer id.
  Ask the user to register the generated customer id and link two accounts from regular mock FIP and
  three accounts from alternate mock FIP and confirm. Ask the user to deregister the customer id from AA
  and confirm. Finally validate that the de-link requests are received by regular and alternate mock FIP for
  the respective linked accounts.
    Given Calling the FIP and FIU Notifications request API.
    When  GET action is performed.
    Then  Verify that the de-link request is received by the regular mock FIP for its two accounts.
    And   Verify that the de-link request is received by the alternate mock FIP for its three accounts.