Feature: On Calling Account link token request for a empty token and empty RefNumber and check if it is
  responding with error response

  Scenario: 1050_1 Send Account link token request sent with empty string in token and RefNumber fields. Verify
  that HTTP 404 is displayed in response.
    Given  Calling the Account Link token Flow API
    When  GET action is performed.
    Then  Verify that the Response code 404 is displayed.