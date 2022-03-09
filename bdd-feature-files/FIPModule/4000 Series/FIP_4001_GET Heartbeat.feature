Feature: On Calling Heartbeat request and check if it is responding with success (HTTP status code 200)

  Scenario: 4001_1 Response validation for Heartbeat with the validation of timestamp whether it is in +15 min
  or -15 min from current time and Status should be UP
    Given  Calling the GET Heartbeat Flow API
    When  GET action is performed.
    Then  Verify that the Response code 200 is displayed.
    And Verify that the version is supported version.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And Status should be up