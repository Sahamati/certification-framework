Feature: On Calling POST FI Request using consent that is not active and check if it is responding
  with HTTP status code 400 and 403

  Scenario: 3012_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request  and try the following. Send POST Account FIRequest with value
  of consentStatus field = PAUSED. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentPaused.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request  and try the following. Send POST Account FIRequest with value
  of consentStatus field = EXPIRED. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentExpired.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request  and try the following. Send POST Account FIRequest with value
  of consentStatus field = REVOKED. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentRevoked.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request  and try the following. Send POST Account FIRequest with value
  of consentExpiring field that expires after 2 minutes. Verify that HTTP 403 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 403 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is ConsentExpired.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 3012_5 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request  and try the following. Send POST Account FIRequest with value
  of consentStart field that starts after 2 hrs. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.