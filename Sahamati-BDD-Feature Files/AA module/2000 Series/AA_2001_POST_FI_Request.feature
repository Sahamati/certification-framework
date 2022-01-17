Feature: On calling POST FI Request API, verify that sending a valid FI request, the success response is received.

  Scenario: 2001_1 On calling the POST FI Request API, use the pre-generated consent details from settings,
  set a valid FI response in mock FIP and send a valid FI request. Verify that the success response is received.
    Given Calling the POST FI Request API.
    When POST action is performed.
    Then Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently
         supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that the txnid id is same as the txnid from request.
    And Verify that the consentId of request and response are matching.
    And Verify that the sessionId is a valid UUID string.