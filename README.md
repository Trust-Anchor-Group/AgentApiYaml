# Neuron Agent API - OpenAPI/Swagger Specification

## Format

OpenAPI 3.0 (OAS 3.0)

## OAS 3.0 Overview

OpenAPI 3.0 is a widely adopted standard for documenting RESTful APIs. It provides a way to describe describe the capabilities of an API in a machine-readable format.
It is used to define the structure of an API, including its endpoints, the data it can send and receive, and its authentication methods.

## What can we use it for?

The specification can be used for testing and with tools such as SwaggerUI and Swagger Codegen to automatically generate API documentation and client code.

## Endpoints described in the spec

| Endpoint                                     | Available      |
|----------------------------------------------|----------------|
| `/Account/DomainInfo`                        | ✅             |
| `/Account/Create`                            | ✅             |
| `/Account/GetSessionToken`                   | ✅             |
| `/Account/VerifyEMail`                       | ✅             |
| `/Account/Login`                             | ✅             |
| `/Account/WwwLogin`                          | ✅             |
| `/Account/Refresh`                           | ✅             |
| `/Account/Logout`                            | ✅             |
| `/Account/Recover`                           | ✅             |
| `/Xmpp/SendTextMessage`                      | ✅             |
| `/Xmpp/SendFormattedMessage`                 | ✅             |
| `/Xmpp/SendXmlMessage`                       | ✅             |
| `/Xmpp/SendPresenceSubscription`             | ✅             |
| `/Xmpp/SendPresenceUnsubscription`           | ✅             |
| `/Xmpp/SendSubscriptionAccepted`             | ✅             |
| `/Xmpp/SendSubscriptionDeclined`             | ✅             |
| `/Xmpp/GetRoster`                            | ✅             |
| `/Xmpp/GetRosterItem`                        | ✅             |
| `/Xmpp/SetRosterItem`                        | ✅             |
| `/Xmpp/RemoveRosterItem`                     | ✅             |
| `/Xmpp/PresenceProbe`                        | ✅             |
| `/Xmpp/InformationQuery`                     | ✅             |
| `/Xmpp/PopMessages`                          | ✅             |
| `/Storage/SavePrivateXml`                    | ✅             |
| `/Storage/LoadPrivateXml`                    | ✅             |
| `/Storage/Content`                           | ✅             |
| `/Storage/Content/{username}/{contentId}`    | ✅             |
| `/Storage/Content/{path}`                    | ✅             |
| `/Crypto/GetAlgorithms`                      | ✅             |
| `/Crypto/CreateKey`                          | ✅             |
| `/Crypto/GetPublicKey`                       | ✅             |
| `/Legal/ValidatePNr`                         | ✅             |
| `/Legal/GetApplicationAttributes`            | ✅             |
| `/Legal/GetIdentity`                         | ✅             |
| `/Legal/AddIdAttachment`                     | ✅             |
| `/Legal/ReadyForApproval`                    | ✅             |
| `/Legal/GetServiceProviderForIdReview`       | ✅             |
| `/Legal/SelectReviewService`                 | ✅             |
| `/Legal/AuthorizeAccessToId`                 | ✅             |
| `/Legal/PetitionPeerReview`                  | ✅             |
| `/Legal/PetitionId`                          | ✅             |
| `/Legal/PetitionSignature`                   | ✅             |
| `/Legal/CreateContract`                      | ✅             |
| `/Legal/GetContract`                         | ✅             |
| `/Legal/SignContract`                        | ✅             |
| `/Legal/SignData`                            | ✅             |
| `/Legal/GetIdentities`                       | ❌             |
| `/Legal/GetCreatedContracts`                 | ❌             |
| `/Legal/AuthorizeAccessToContract`           | ❌             |
| `/Wallet/GetBalance`                         | ❌             |
| `/Wallet/ProcessEDalerUri`                   | ❌             |
| `/Wallet/GetServiceProvidersForBuyingEDaler` | ❌             |
| `/Wallet/GetServiceProvidersForSellingEDaler`| ❌             |
| `/Wallet/InitiateBuyEDaler`                  | ❌             |
| `/Wallet/InitiateSellEDaler`                 | ❌             |
| `/Wallet/GetTransactionInformation`          | ❌             |
| `/Tokens/GetTokens`                          | ❌             |
| `/Tokens/GetContractTokens`                  | ❌             |
| `/Tokens/GetCreationAttributes`              | ❌             |
| `/Tokens/GetToken`                           | ❌             |
| `/Tokens/GetDescription`                     | ❌             |
| `/Tokens/AddTextNote`                        | ❌             |
| `/Tokens/AddXmlNote`                         | ❌             |
| `/Tokens/GetTokenEvents`                     | ❌             |
| `/StateMachines/GetCurrentState`             | ❌             |
| `/StateMachines/CreateReport`                | ❌             |
