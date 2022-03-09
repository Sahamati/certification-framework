Feature: On Calling Account de-link request with a invalid format customerAddress and check if it
  is responding with a bad request

  Scenario: 1043_1 Try with invalid format customerAddress. Send Account de-link request with Invalid
  CustomerAddress validation. Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1043_2 Try with alternate customerAddress of same aa, which is not linked with this account. Send
  Account de-link request with Invalid CustomerAddress validation for alternate customer id of same aa(id).
  Verify that HTTP 400 is displayed in response.
    Given  Calling the DELETE Account Link Flow API
    When  action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidLinkRefNumber.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.