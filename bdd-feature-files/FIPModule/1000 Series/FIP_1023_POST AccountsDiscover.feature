Feature: On Calling POST Account discovery API with valid customer details and check the txnid traceablity,
  API version and timestamp

  Scenario: 1023_1 On Calling POST Account discovery with valid customer details and check the txnid traceablity
  and API version
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the txnid id is same as the txnid from request.
    And Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And verify the Txnid should be same as the txnid from request
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.


