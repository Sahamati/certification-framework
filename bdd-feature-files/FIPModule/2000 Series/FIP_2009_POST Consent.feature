Feature: Set Consent/notification response in mock server, Send consent post request with each valid
  purpose object type and check if it is responding with HTTP status code 200 (Ok)

  Scenario: 2009_1 Use the pre-linked user details from settings. Send POST Account Consent request with
  Purpose Code: 101 in code field and text: Wealth management service in text field in request body. Verify
  that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2009_2 Use the pre-linked user details from settings. Send POST Account Consent request with
  Purpose Code: 102 in code field and text: Customer spending patterns, budget or other reportings in text
  field in request body. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2009_3 Use the pre-linked user details from settings. Send POST Account Consent request with
  Purpose Code: 103 in code field and text: Aggregated statement in text field in request body. Verify that
  HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2009_4 Use the pre-linked user details from settings. Send POST Account Consent request with
  Purpose Code: 104 in code field and text: Explicit consent for monitoring of the accounts in text field
  in request body. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2009_5 Use the pre-linked user details from settings. Send POST Account Consent request with
  Purpose Code: 105 in code field and text: Explicit one-time consent for the accounts in text field in
  request body. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.