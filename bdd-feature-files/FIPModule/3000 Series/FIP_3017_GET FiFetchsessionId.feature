Feature:  Send FI request and FI fetch request for all combinations of the DataFilter and check if
  the received FI data respects the DataFilter for positive test case

  Scenario: 3017_1 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 1st month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_2 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 2nd month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_3 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 3rd month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_4 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 4th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_5 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 5th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_6 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 6th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_7 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 7th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_8 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 8th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_9 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 9th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_10 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 10th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_11 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 11th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.

  Scenario: 3017_12 Use the pre-linked user details from settings and try the following
  1. Set Consent/notification response in mock server, Post consent with DataFilter of all combinations of
  type and operator and validate if the received data respects the filters. After post consent request set
  fi/notification response on mock server and send FI request. Wait for FI ready notification and finally
  send the FI fetch request.
  The pre-linked user is expected to have the below 4 transactions for each month for the past 12 months
  1. 1 credit for 5000
  2. 1 debit for 5000
  3. 1 credit for 10000
  4. 1 debit for 10000.
  Send FI Fetch for all combination of Datafilter operator and Data type for 12th month
    Given  Calling the POST FI Fetch Flow API
    When  GET action is performed.
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And Verify that the Response code FI request should be HTTP 200
    And  Verify that the Response code FI fetch request should be HTTP 200
    And Verify that the FI data should contain only the data for the requested month filter
    And cryptoAlgo received in Fi/fetch response should be valid Algorithm.