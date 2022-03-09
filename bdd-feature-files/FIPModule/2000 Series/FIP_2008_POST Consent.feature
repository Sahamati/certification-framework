Feature: On Calling POST Consent request with a invalid format customerAddress and check if it is
  responding with a bad request

  Scenario: 2008_1 Use the pre-linked user details from settings. Send POST Account Consent request with
  incorrect customer_id 00000 in Customer objects id field in request body. Verify that HTTP 400 is
  displayed in response.
    Given  Calling the POST Consent Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.