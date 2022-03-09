Feature: On Calling POST Consent request with valid details and check if it is responding with
  success (HTTP status code 200).

  Scenario: 2001_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, and send one valid consent post request for each consentMode type with dataLife value equal to 0
  except for consentMode Store dataLife value should be greater than 0. Send POST Consent request for each
  valid consent mode type : VIEW. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2001_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, and send one valid consent post request for each consentMode type with dataLife value equal to 0
  except for consentMode Store dataLife value should be greater than 0. Send POST Consent request for each
  valid consent mode type : STORE. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2001_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, and send one valid consent post request for each consentMode type with dataLife value equal to 0
  except for consentMode Store dataLife value should be greater than 0. Send POST Consent request for each
  valid consent mode type : QUERY. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.

  Scenario: 2001_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, and send one valid consent post request for each consentMode type with dataLife value equal to 0
  except for consentMode Store dataLife value should be greater than 0. Send POST Consent request for each
  valid consent mode type : STREAM. Verify that HTTP 200 is displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 200 is displayed.