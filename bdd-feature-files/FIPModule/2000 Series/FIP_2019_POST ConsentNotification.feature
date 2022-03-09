Feature: On Calling POST Consent Notification request with valid details and check if it is responding
  with success (HTTP status code 200)

  Scenario: 2019_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, post a valid consent and then send one valid consent notification request for each consentStatus in
  be sequence PAUSED, ACTIVE, REVOKED. Send POST Account Consent Notification request with
  ConsentStatus : PAUSED in consentStatus field in request body. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2019_2 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, post a valid consent and then send one valid consent notification request for each consentStatus in
  be sequence PAUSED, ACTIVE, REVOKED. Send POST Account Consent Notification request with
  ConsentStatus : ACTIVE in consentStatus field in request body. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2019_3 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, post a valid consent and then send one valid consent notification request for each consentStatus in
  be sequence PAUSED, ACTIVE, REVOKED. Send POST Account Consent Notification request with
  ConsentStatus : REVOKED in consentStatus field in request body. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.