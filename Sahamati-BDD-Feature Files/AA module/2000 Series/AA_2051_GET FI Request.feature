Feature: On calling GET FI fetch Request API, verify that on sending FI fetch request with invalid Client API key,
  the error response is received.

  Scenario: 2051_1 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU.
  Send the FI fetch request. Send the request as regular FIU without the client_api_key header on the client api key
  header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 401.

  Scenario: 2051_2 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU.
  Send the FI fetch request. Send the request as regular FIU with client_api_key as empty string on the client api key
  header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 401.

  Scenario: 2051_3 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU.
  Send the FI fetch request. Send request as regular FIU with client_api_key as '0' on the client api key
  header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 401.

  Scenario: 2051_4 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU.
  Send the FI fetch request. Split the api key with .(dot) and send the request as regular FIU with one character
  removed for that component on the client api key header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 401.

  Scenario: 2051_4.1 GET FI fetch Request API, use the pre-linked user details from settings, set a valid FI response in
  mock FIP and send a valid FI request. Set the FI fetch response to the mock FIP and set the FI notification response
  in FIU mock server. Send the FI ready notification and wait to receive FI ready notification in mock FIU.
  Send the FI fetch request. Split the api key with .(dot) and send the request as regular FIU with one character
  added for that component on the client api key header.
    Given Calling the GET FI fetch Request API.
    When GET action is performed.
    Then Verify that the response code displayed is HTTP 401.