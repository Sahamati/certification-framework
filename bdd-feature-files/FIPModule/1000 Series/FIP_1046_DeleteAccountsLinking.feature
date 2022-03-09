Feature: On Calling Account de-link request with invalid linkRefNumber and check if it is responding
  with a HTTP Status code 400 (Bad Request)

  Scenario: 1046_1 Send Account de-link request using random linkRefNumber.Verify that HTTP 400 is displayed
  in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidLinkRefNumber.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1046_2 Send Account de-link request using RefNumber received in the link request as linkRefNumber.
  Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidLinkRefNumber.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1046_3 Send Account de-link request using a valid linkRefNumber of other customerAddress. Verify
  that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidLinkRefNumber.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.