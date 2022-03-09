Feature: On Calling POST FI Request for consents of different consentModes and check if it is
  responding with HTTP status 200 (success)

  Scenario: 3013_1 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid consentMode with dataLife
  value set to 0, except for consentMode STORE dataLife should be greater than 0 and then send the FI request
  for each consent. Send POST Account FIRequest with consentMode field as VIEW. Verify that HTTP 200 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 3013_2 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid consentMode with dataLife
  value set to 0, except for consentMode STORE dataLife should be greater than 0 and then send the FI request
  for each consent. Send POST Account FIRequest with consentMode field as STORE. Verify that HTTP 200 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 3013_3 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid consentMode with dataLife
  value set to 0, except for consentMode STORE dataLife should be greater than 0 and then send the FI request
  for each consent. Send POST Account FIRequest with consentMode field as QUERY. Verify that HTTP 200 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 3013_4 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid consentMode with dataLife
  value set to 0, except for consentMode STORE dataLife should be greater than 0 and then send the FI request
  for each consent. Send POST Account FIRequest with consentMode field as STREAM. Verify that HTTP 200 is
  displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.