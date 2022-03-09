Feature: Send FI request and FI fetch request for consents created for all combinations of the
  consentTypes and check if the data structure of the FI data is matching the FIType schema

  Scenario: 3015_1 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType PROFILE for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3015_2 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType SUMMARY for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3015_3 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType TRANSACTIONS for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3015_4 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType PROFILE,SUMMARY for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3015_5 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType PROFILE,TRANSACTIONS for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3015_6 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType SUMMARY,TRANSACTIONS for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3015_7 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with each valid combination of
  consentType.Set Fi/Notification response on mock server. Then send the FI request, wait for FI ready
  notification and then send FI fetch request. Send FI Fetch request for response validation of FI data must
  be matching the FIType schema for consentType PROFILE,SUMMARY,TRANSACTIONS for success
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should match the FIType schema
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.