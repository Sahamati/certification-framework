Feature: On calling Send Heart beat request API, check that it is responding with success response HTTP status code 200.

  Scenario: 4001_1 On calling Send Heart beat request API, response validation for Heartbeat with the validation of
  timestamp whether it is in +15 minutes or -15 minutes from current time and Status should be UP.
    Given Calling Send Heart beat request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 200.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And  Verify that Status is UP.