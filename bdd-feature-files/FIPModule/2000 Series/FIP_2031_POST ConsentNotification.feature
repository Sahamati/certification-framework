Feature: On Calling POST Consent Notification request with invalid ConsentStatusNotification and
  check if it is responding with HTTP status code 400 (Bad request)

  Scenario: 2031_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  servers, send a valid consent request as regular AA and alternate AA and send a consent notification request
  with the following variations. Send POST Account Consent Notification request as alternate AA with valid
  consent details of regural AA. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.

  Scenario: 2031_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  servers, send a valid consent request as regular AA and alternate AA and send a consent notification request
  with the following variations. Send POST Account Consent Notification request as alternate AA with
  alternative AA consent details and regural AA Notifier id. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Consent Notification Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidNotifier.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.