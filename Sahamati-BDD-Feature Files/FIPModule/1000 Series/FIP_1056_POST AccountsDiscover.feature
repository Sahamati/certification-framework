Feature: On Calling POST Account discovery API with invalid JWS API signature, error response is received

  Scenario: 1056_1 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by using the valid JWS signature but add one char
  to the end. Verify that HTTP 400 is displayed in response.
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1056_2 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by using the valid JWS signature but remove the
  last char. Verify that HTTP 400 is displayed in response.
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1056_3 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by generating the JWS signature using a different
  key that is not used for anything else. Verify that HTTP 400 is displayed in response.
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 1056_4 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by using the valid JWS signature, but do a small
  change in the request body data. Verify that HTTP 400 is displayed in response.
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is SignatureDoesNotMatch.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.