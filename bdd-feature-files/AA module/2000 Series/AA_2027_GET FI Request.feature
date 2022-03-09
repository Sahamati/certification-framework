Feature: On calling GET FI fetch Request API, verify that on sending a valid FI fetch request, the success response
  is received.

  Scenario: 2027_1 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU. Send the FI
  fetch request.
    Given Calling the GET FI fetch Request API,.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 200.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And  Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from current
         time stamp.
    And Verify that one object of FI array exactly matches the FI object sent in the response from mock FIP.