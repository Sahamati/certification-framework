Feature: On calling GET Consent Handle request API, verify that on sending a valid consent GET request,
  the success response is received.  .

  Scenario: 1026_1 On calling GET Consent Handle request API, use the pre-linked user details from settings and
  send one valid consent request. Pick one account of the pre-linked user for the requested consent FIType from
  mock server. Set the Post consent response on mock server. Ask the user to approve the consent with that
  single account and confirm. Send the consent handle request and send the consent GET request. Verify that
  the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify the ConsentId is a valid UUID string.
    And  Verify that the status displayed is ACTIVE.
    And  Verify that the createTimestamp is sent within time consent POST request and current time.
    And  Verify that the signedConsent has the valid JWS signed consent and ConsentDetail object is
         extractable from JWS body.
    And  Verify that the ConsentDetail object fields are matching the values sent in the consent POST request.
    And  Very that the ConsentDetail.DataConsumer.type is FIU.
    And  Verify that the ConsentDetail.DataProvider.type is AA.
    And  Verify that the ConsentDetail.Accounts are matching the approved accounts.
    And  Verify that the ConsentUse.count is 0.
    And  ConsentDetail.DataProvider.id is the id of AA server.

  Scenario: 1026_1 On calling GET Consent Handle request API, use the pre-linked user details from settings and
  send one valid consent request. Pick two accounts of the pre-linked user for the requested consent FIType from
  mock server. Set the Post consent response on mock server. Ask the user to approve the consent with those
  two accounts and confirm. Send the consent handle request and send the consent GET request. Verify that
  the error response is received.
    Given Calling the GET Consent Handle Request API.
    When GET action is performed.
    Then Verify that the response code 200 is received.
    And  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
         supported.
    And  Verify the ConsentId is a valid UUID string.
    And  Verify that the status displayed is ACTIVE.
    And  Verify that the createTimestamp is sent within time consent POST request and current time.
    And  Verify that the signedConsent has the valid JWS signed consent and ConsentDetail object is
         extractable from JWS body.
    And  Verify that the ConsentDetail object fields are matching the values sent in the consent POST request.
    And  Very that the ConsentDetail.DataConsumer.type is FIU.
    And  Verify that the ConsentDetail.DataProvider.type is AA.
    And  Verify that the ConsentDetail.Accounts are matching the approved accounts.
    And  Verify that the ConsentUse.count is 0.
    And  ConsentDetail.DataProvider.id is the id of AA server.