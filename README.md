# Neuron Agent API - OpenAPI/Swagger Specification

## Format

OpenAPI 3.0 (OAS 3.0)

## OAS 3.0 Overview

OpenAPI 3.0 is a widely adopted standard for documenting RESTful APIs. It provides a way to describe describe the capabilities of an API in a machine-readable format.
It is used to define the structure of an API, including its endpoints, the data it can send and receive, and its authentication methods.

## What can we use it for?

The specification can be used for testing and with tools such as SwaggerUI and Swagger Codegen to automatically generate API documentation and client code.
This repo also contains a setup for Windows machines can be used to generate client code for the API
See [Generating SDKs](#generating-sdks)

## Endpoints

- Endpoint: path of endpoint
- Available:
  - ✅ = featured and implemented
  - ⚠️ = featured but not implemented
  - ❌ = not featured
- Documented:
  - ✅ = yes
  - ❌ = no

| Endpoint                                     | Available      | Documented      |
|----------------------------------------------|----------------|-----------------|
| `/Account/DomainInfo`                        | ✅             |✅              |
| `/Account/Create`                            | ✅             |✅              |
| `/Account/GetSessionToken`                   | ✅             |❌              |
| `/Account/VerifyEMail`                       | ✅             |❌              |
| `/Account/Login`                             | ✅             |❌              |
| `/Account/QuickLogin`                        | ❌             |❌              |
| `/Account/WwwLogin`                          | ✅             |❌              |
| `/Account/Refresh`                           | ✅             |❌              |
| `/Account/Logout`                            | ✅             |❌              |
| `/Account/Recover`                           | ✅             |❌              |
| `/Account/Info`                              | ❌             |❌              |
| `/Account/AuthenticateJwt`                   | ❌             |❌              |
| `/Xmpp/SendTextMessage`                      | ✅             |❌              |
| `/Xmpp/SendFormattedMessage`                 | ✅             |❌              |
| `/Xmpp/SendXmlMessage`                       | ✅             |❌              |
| `/Xmpp/SendPresenceSubscription`             | ✅             |❌              |
| `/Xmpp/SendPresenceUnsubscription`           | ✅             |❌              |
| `/Xmpp/SendSubscriptionAccepted`             | ✅             |❌              |
| `/Xmpp/SendSubscriptionDeclined`             | ✅             |❌              |
| `/Xmpp/GetRoster`                            | ✅             |❌              |
| `/Xmpp/GetRosterItem`                        | ✅             |❌              |
| `/Xmpp/SetRosterItem`                        | ✅             |❌              |
| `/Xmpp/RemoveRosterItem`                     | ✅             |❌              |
| `/Xmpp/PresenceProbe`                        | ✅             |❌              |
| `/Xmpp/InformationQuery`                     | ✅             |❌              |
| `/Xmpp/PopMessages`                          | ✅             |❌              |
| `/Storage/SavePrivateXml`                    | ✅             |❌              |
| `/Storage/LoadPrivateXml`                    | ✅             |❌              |
| `/Storage/Content`                           | ✅             |❌              |
| `/Storage/Content/{username}/{contentId}`    | ✅             |❌              |
| `/Storage/Content/{path}`                    | ✅             |❌              |
| `/Crypto/GetAlgorithms`                      | ✅             |❌              |
| `/Crypto/CreateKey`                          | ✅             |❌              |
| `/Crypto/GetPublicKey`                       | ✅             |❌              |
| `/Legal/ValidatePNr`                         | ✅             |❌              |
| `/Legal/GetApplicationAttributes`            | ✅             |❌              |
| `/Legal/GetIdentity`                         | ✅             |❌              |
| `/Legal/AddIdAttachment`                     | ✅             |❌              |
| `/Legal/ReadyForApproval`                    | ✅             |❌              |
| `/Legal/GetServiceProviderForIdReview`       | ✅             |❌              |
| `/Legal/SelectReviewService`                 | ✅             |❌              |
| `/Legal/AuthorizeAccessToId`                 | ✅             |❌              |
| `/Legal/PetitionPeerReview`                  | ✅             |❌              |
| `/Legal/PetitionId`                          | ✅             |❌              |
| `/Legal/PetitionSignature`                   | ✅             |❌              |
| `/Legal/CreateContract`                      | ✅             |❌              |
| `/Legal/GetContract`                         | ✅             |❌              |
| `/Legal/SignContract`                        | ✅             |❌              |
| `/Legal/SignData`                            | ✅             |❌              |
| `/Legal/GetIdentities`                       | ✅             |❌              |
| `/Legal/GetCreatedContracts`                 | ✅             |❌              |
| `/Legal/AuthorizeAccessToContract`           | ✅             |❌              |
| `/Wallet/GetBalance`                         | ✅             |❌              |
| `/Wallet/ProcessEDalerUri`                   | ✅             |❌              |
| `/Wallet/GetServiceProvidersForBuyingEDaler` | ✅             |❌              |
| `/Wallet/GetServiceProvidersForSellingEDaler`| ✅             |❌              |
| `/Wallet/GetPaymentOptionsForBuyingEDaler`   | ✅             |❌              |
| `/Wallet/GetPaymentOptionsForSellingEDaler`  | ✅             |❌              |
| `/Wallet/InitiateBuyEDaler`                  | ✅             |❌              |
| `/Wallet/InitiateSellEDaler`                 | ✅             |❌              |
| `/Wallet/GetTransactionInformation`          | ✅             |❌              |
| `/Tokens/GetTokens`                          | ✅             |❌              |
| `/Tokens/GetContractTokens`                  | ✅             |❌              |
| `/Tokens/GetCreationAttributes`              | ✅             |❌              |
| `/Tokens/GetToken`                           | ✅             |❌              |
| `/Tokens/GetDescription`                     | ✅             |❌              |
| `/Tokens/AddTextNote`                        | ✅             |❌              |
| `/Tokens/AddXmlNote`                         | ✅             |❌              |
| `/Tokens/GetTokenEvents`                     | ✅             |❌              |
| `/StateMachines/GetCurrentState`             | ✅             |❌              |
| `/StateMachines/CreateReport`                | ✅             |❌              |

## Generating SDKs

This section provides a guide on how to generate client SDKs using OpenAPI Codegen with the help of batch files provided in this repository.

### Requirements

- Java 8 (or newer) installed on your system.

### Setup and Usage

1. **List Available Generators:** To get started, you can list all available generators or languages by running the `listGenerators.bat` batch file. This will give you an idea of the supported languages you can generate SDKs for.

2. **Configuring the Generator:** Before generating the SDK, you may want to configure certain options. Edit `configHelp.bat` and set the LANG variable to the the desired generator name. Run the bat file to list all configurable options for that generator. You can then set these options in the `config.json` file.

3. **Generating the SDK:**
    - Open `generateSdk.bat` in a text editor.
    - Locate the `LANG` variable and set it to the desired language for your SDK.
    - Run `generateSdk.bat` to generate the SDK using the configurations provided in the `config.json` file.

### Customization

You can customize the generation process by editing the `config.json` file. This file allows you to specify various options such as package names, version numbers, and other settings specific to the language and framework you're targeting.

### Additional Notes

- All batch files will automatically download the `openapi-generator-cli.jar` if it's not already present on your system.
- Ensure that you have an internet connection to download the necessary files.
- For detailed documentation on OpenAPI Codegen, visit [OpenAPI Generator's github page](https://github.com/OpenAPITools/openapi-generator).

### Troubleshooting

If you encounter any issues during the generation process, please ensure that:

- Try a newer version of JAVA
- Your internet connection is stable.
- The `config.json` file is properly formatted and contains valid options.
