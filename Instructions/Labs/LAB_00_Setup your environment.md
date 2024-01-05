---
lab:
    title: 'Lab 0: Setup your environment'
---

# Lab: Setup your environment and software
# Student lab manual

Setup your environment and software
===================================

To start writing extensions for Dynamics 365 Business Central, you'll need a
Business Central tenant, Visual Studio Code, and the AL Language extension for
Microsoft Dynamics 365 Business Central.

**Lab prerequisites**

-   A Business Central Saas Sandbox

-   Visual Studio Code with AL Language extension

More information about getting started with AL is available here:
<https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-get-started>

If you want to create a container-based sandbox, see [Get started with the
Container Sandbox Development
Environment](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-get-started-container-sandbox).
For information about which sandboxes you can choose, see [Sandbox Environments
for Dynamics 365 Business Central
Development](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-sandbox-overview).

You can either choose to run a sandbox environment deployed as a Dynamics 365
Business Central service, or you can run a container-based image either hosted
as an Azure VM or locally. You can also choose to run a sandbox environment with
production data using the Business Central Admin Center.

**To create a Business Central Sandbox, follow these steps:**

1.  Sign up for a Dynamics 365 Business Central sandbox, using this link:
    <https://signup.microsoft.com/signup?sku=6a4a1628-9b9a-424d-bed5-4118f0ede3fd&ru=https%3A%2F%2Fbusinesscentral.dynamics.com%2FSandbox%2F%3FredirectedFromSignup%3D1>

2.  Create a Sandbox environment:

    1.  In the navigation pane on the left side of the **Business Central
        administration center**, select **Environments**, then select the
        **New** action on the action ribbon.

    2.  In the **Create Environment** pane, specify a name for the new
        environment.

    3.  In the **Environment Type** list, choose **Sandbox**.

    4.  Enter a name for the new environment, for example: **SandboxDev**

    5.  Choose **Create**.

    6.  The new environment won't be accessible until the **State** shows
        **Active**.

    7.  More information about managing environments is available here:
        <https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/administration/tenant-admin-center-environments#create-a-new-environment>

**To install Visual Studio Code, follow these steps:**

1.  Download Visual Studio Code, using this link:
    <https://code.visualstudio.com/Download>

2.  Download the AL Language extension for Microsoft Dynamics 365 Business
    Central, using this link:
    <https://marketplace.visualstudio.com/items?itemName=ms-dynamics-smb.al>
