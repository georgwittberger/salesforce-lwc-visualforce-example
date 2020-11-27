# Salesforce Lightning Web Components for Visualforce Example

> Example project to demonstrate how to use Lightning Web Components in Visualforce Pages

- [Salesforce Lightning Web Components for Visualforce Example](#salesforce-lightning-web-components-for-visualforce-example)
  - [Overview](#overview)
  - [Installation](#installation)
  - [Testing](#testing)
    - [Internal Users](#internal-users)
    - [Community Users](#community-users)
    - [Guest Users](#guest-users)
  - [Concepts](#concepts)
    - [Lightning Web Component](#lightning-web-component)
    - [Lightning Out App](#lightning-out-app)
    - [Visualforce Page](#visualforce-page)
  - [Further Resources](#further-resources)
  - [License](#license)

## Overview

This SFDX project contains an example showing how Lightning Web Components can be used inside Visualforce Pages leveraging the Lightning Out technology.

## Installation

1. Deploy the SFDX project using Salesforce CLI by running the following command in the project root directory.

   ```bash
   sfdx force:source:deploy -p ./force-app
   ```

2. Grant the test users permission to access the following Salesforce components using profiles or permission sets.

   - Visualforce page `lwcvf_ExamplePage`
   - Apex class `lwcvf_ExampleController`

## Testing

### Internal Users

Internal users can access the Visualforce page by the URL <https://{DOMAIN}/apex/lwcvf_ExamplePage>

The placeholder `{DOMAIN}` must be replaced with the Salesforce instance domain.

### Community Users

Community users can access the Visualforce page by the URL <https://{DOMAIN}/{PREFIX}/lwcvf_ExamplePage>

The placeholder `{DOMAIN}` must be replaced with the Salesforce community domain and `{PREFIX}` with the optional URL prefix of the community.

### Guest Users

Guest users can access the Visualforce page by the URL <https://{DOMAIN}/{PREFIX}/lwcvf_ExamplePage>

The placeholder `{DOMAIN}` must be replaced with the Salesforce community domain and `{PREFIX}` with the optional URL prefix of the community.

**IMPORTANT: The source code of the Lightning Out example app must be modified to give guest users access to the app!**

## Concepts

### Lightning Web Component

There are no specific requirements which Lightning Web Components need to fulfill in order to be used inside a Visualforce page. They can also interact with Apex controllers as usual. See the component `lwcvf_ExampleComponent` for an example.

### Lightning Out App

Lightning Web Components are integrated into Visualforce pages using Lightning Out as a bridge technology. Therefore, a special Aura Application must be created which declares the Lightning Web Components to be used in the page as dependencies. See the app `lwcvf_ExampleApp` for an example.

The app also defines the following two aspects which may be important depending on the use case.

- **Integration of Salesforce Lightning Design System (SLDS):** If the app is defined with `extends="ltng:outApp"` it will also load SLDS stylesheets into the Visualforce page. If this is not desired - e.g. in a Lightning Community context - the app should be defined with `extends="ltng:outAppUnstyled"`.
- **Access for Guest Users:** The app is only available to authenticated users by default. This includes external users for communities but not guest users. If the app should also be available to guests it must be defined with the additional interface `implements="ltng:allowGuestAccess"`.

### Visualforce Page

Visualforce pages which integrate Lightning Web Components must declare the usage of Lightning Out with the tag `<apex:includeLightning />` and then use the global JavaScript object `$Lightning` to load the Lightning Out app and create component instances. See the page `lwcvf_ExamplePage` for an example.

## Further Resources

- [Official documentation on how to use Lightning Web Components in Visualforce Pages](https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.use_visualforce)
- [Official documentation on how to share Lightning Out Apps with Guest Users](https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.lightning_out_public_apps)

## License

[MIT License](https://opensource.org/licenses/MIT)
