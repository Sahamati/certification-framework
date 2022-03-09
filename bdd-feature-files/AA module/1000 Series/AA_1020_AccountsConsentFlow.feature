Feature: On calling POST Accounts Consent Flow API, verify that on sending the consent handle request for consent,
  which is paused by user, response with consent status READY is received.

  Scenario: 1020_1 On calling the POST Accounts Consent Flow API, use the pre-linked user details from settings.
 Set the Post consent response on Mock FIP, send a valid consent request. Ask the user to approve and confirm.
  Send a consent handle request to receive the READY status. Ask the user to pause the consent and confirm.
  Send the consent handle request. Verify that the READY consent status is received.
    Given Calling the POST Accounts Consent Flow API.
    When POST action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the ConsentStatus.status is READY.