---
description: General Implementation Guidelines
---

# General Guidelines

### Validation and Error Codes

Validation of fields and objects within json can be logically split into the following stages:

#### Syntax validation

Syntax validation refers to validation of a JSON message against the JSON syntax rules. All syntax rule violations should be responded with InvalidRequest error with 400 error code.

Examples of syntax rule violations: Missing braces for an object, missing commas where expected, etc.

#### Schema/Semantic validation

Schema/Semantic validation refers to validation of a JSON message against a well defined grammar defining the structure, content and semantics.

In the AA ecosystem the swagger specifications define the structure and semantics of JSON based API requests and responses and their contents.

Any validation failure against the defined structure in the swagger spec, should be responded with InvalidRequest error with 400 error code.

Example: A Mandatory field containing null or empty string value, A mandatory object is set as null, A mandatory object set as an empty string, unparsable dates, data type mismatch, etc.

#### Business Rule validation

Business rule validation can be applied after successful syntactic and schema/semantic validation. Specific errors with error codes may be used for this purpose. 

Example: NoSuchVersion, InvalidDateRange, InvalidConsentPurpose etc.

When a specific error can not be determined while validating a specific api request, InvalidRequest should be used.

The order of validation should always be in the Syntax, Schema and Business Rule validation order. So if a validation error is detected in the earlier stages, the validation should not continue to the next stage, and errors should be returned according to the allowed responses of the specific stage.

### Optional field validation

Schema and Business rule validations are not required for optional fields when they are not supplied by the caller. However, they must be validated when a non-blank value is provided.

### Empty String validation

Empty String is not considered as a valid value, and should be considered identical to a null or empty value. Hence, an empty string value \(even for a string field\) for a mandatory field should be considered as violation of the schema definition and should be responded with a InvalidRequest. The same rule applies to empty objects represented with just two curly braces.

### UUIDs

UUIDs provide reliable uniqueness, hence they should be used where globally unique identifiers are required. Examples: txnid, sessionId, consentHandlId. For consistency and interoperability, version 4 of UUID should be used. At a minimum, the validation must include validation for 36 characters in length, and they hyphen \(-\) at the 9th, 14th, 19th and 24th position.

### Timestamps

Where timestamps are used to represent the request/response, validation should be performed to ensure they are not greater than 15 minutes in the past or future. Timestamps must comply with the ISO 8601 standard.

### Validation scope

An implementation of the AA, FIP, FIU API may be liberal on the validation while accepting a request, however, it must always respond or generate requests as per the standard API specifications. In other words the APIs implementation may follow the 'Robustness principle' ""Be conservative in what you send, be liberal in what you accept"". This will enhance interoperability while allowing the implementors choose different platforms and languages. For example, a java based json library may accept and convert a number to string to match the specs and then perform business validations on it, however, it must generate a string representation of the same field when generating a request so that a NodeJs based implementation can successfully parse it as per the specifications.

under no circumstances however, the liberal validation should result in data trunction, data loss or misinterpretation. For example, an implementation can not accept a float value for a int field because the automatic conversion would result in rounding, flooring or truncation.

### Data Life's value

In the AA API specifications, data life value is a mandatory field. However, a value greater than 0 is only acceptable when the consent mode is 'STORE'. For all other modes, the value must be 0.

### InvalidSecurity error code

Even thought error code InvalidSecurity has been defined, it may be deprecated in the future, as its usage is not well understood.

### refUri in Purpose Object

The refUri in Purpose code if present in the message, then must always be equal to the value sepecified in the specifications.

### signedConsent

The signedConsent field in the ConsentArtefact is a base64 encoded self contained JSON Web Signature \(JWS\). When a new consent is posted to the FIP by AA, FIP should not only validate the signedConsent field as per the above validation rules, but also must decode the signedConsent and validate just like any other JSON validated in the ecosystem and applying the same rule sequence. In addition, the JWS validation must also be applied to the signedConsent to ensure integrity of the consent.

### Transaction ids \(txnid\)

In the AA API specifications, the purpose of txnid field is limited to co-relating a request-response message pair. It is not to be used for tracking end-to-end api flows. For such purposes dedicated fields are available \(e.g. session ids for tracking FI Request\)

