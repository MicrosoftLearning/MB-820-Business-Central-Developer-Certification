---
lab:
    title: 'Lab 03: Add a Rolecenter and Profile'
    module: 'Module 5: AL Objects'
---
Lab 03 – Add a Rolecenter and Profile
=====================================

Overview
--------

In this assignment, you will design a personalized dashboard, known as a "Role
Center," in Microsoft Dynamics 365 Business Central, tailored to the specific
needs of a chosen job role within the organization.

The layout of the new rolecenter page will contain two parts. The first part is
will be the "Headline RC Business Manager" and the second part is the "O365
Activities.

High Level Tasks
----------------

Complete the following tasks:

1.  Create a new app: **Lab 03 Rolecenter**

2.  Create a Rolecenter page

3.  Create a Profile object

4.  Deploy your Rolecenter app.

Detailed Steps
--------------

### Create a new app: Lab 03 Rolecenter

To create a new app: Lab 03 Rolecenter, follow these steps:

1.  Press the **Alt+A**, **Alt+L** shortcut keys to trigger the **AL Go!**
    command, and then choose a path to a new empty folder and the version to
    run.

2.  Use **Lab 03 Rolecenter** as the name of the project.

3.  In the the **launch.json** file, make sure the **EnvironmentName** parameter
    exactly matches the name of your sandbox.

4.  In the Command Palette, select **AL: Download Symbols**.

5.  If there are any errors, then update your **launch.json** file and download
    symbols again.

6.  Delete the **HelloWorld.al** file

7.  Create a new folder named: **src**

### Create a Rolecenter page

To create a Rolecenter page, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **MyRolecenter.Page.al**.

3.  Add the following code in the MyRolecenter.Page.al file:

>   al-languageCopy  
>   page 50300 MyRoleCenter

>   {

>       PageType = RoleCenter;

>       Caption = 'My Role Center';

>       layout

>       {

>           area(RoleCenter)

>           {

>               part(Part1; "Headline RC Business Manager")

>               {

>                   ApplicationArea = All;

>               }

>               part(Part2; "O365 Activities")

>               {

>                   ApplicationArea = All;

>               }

>           }

>       }

>       actions

>       {

>           area(Sections)

>           {

>               group(PostedInvoices)

>               {

>                   Caption = 'Posted Invoices';

>                   Image = RegisteredDocs;

>                   action(PostedServiceInvoices)

>                   {

>                       Caption = 'Posted Service Invoices';

>                       RunObject = Page "Posted Service Invoices";

>                       ApplicationArea = All;

>                   }

>                   action(PostedSalesInvoices)

>                   {

>                       Caption = 'Posted Sales Invoices';

>                       RunObject = Page "Posted Sales Invoices";

>                       ApplicationArea = All;

>                   }

>                   group(SalesDocuments)

>                   {

>                       Caption = 'Sales Documents';

>                       action("Sales Document Entity")

>                       {

>                           ApplicationArea = All;

>                           RunObject = page "Sales Document Entity";

>                       }

>                       action("Sales Document Line Entity")

>                       {

>                           ApplicationArea = All;

>                           RunObject = page "Sales Document Line Entity";

>                       }

>                   }

>               }

>           }

>           area(Embedding)

>           {

>               action(Sales)

>               {

>                   Caption = 'Sales lists';

>                   RunObject = Page "Sales list";

>                   ApplicationArea = All;

>               }

>               action(Services)

>               {

>                   Caption = 'Service lists';

>                   RunObject = Page "Service list";

>                   ApplicationArea = All;

>               }

>           }

>           area(Processing)

>           {

>               action(SeeSalesInvoices)

>               {

>                   Caption = 'See Sales Invoices';

>                   RunObject = Page "Posted Sales Invoices";

>                   ToolTip = 'See Sales Invoices';

>                   ApplicationArea = All;

>               }

>           }

>           area(Creation)

>           {

>               action(AddSalesInvoice)

>               {

>                   Caption = 'Add Sales Invoice';

>                   ToolTip = 'Add Sales Invoice';

>                   Image = NewInvoice;

>                   RunObject = Page "Sales Invoice";

>                   RunPageMode = Create;

>                   ApplicationArea = All;

>               }

>           }

>           area(Reporting)

>           {

>               action(SalesInvoicesReport)

>               {

>                   Caption = 'Sales Invoices Report';

>                   ToolTip = 'Sales Invoices Report';

>                   Image = "Report";

>                   RunObject = Report "Standard Sales - Invoice";

>                   ApplicationArea = All;

>               }

>           }

>       }

>   }

### Create a profile page

To create a profile page, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **MyProfile.Profile.al**.

3.  Add the following code in the MyProfile.Profile.alfile:  
    al-languageCopy  
    profile MyProfile

>   {

>       ProfileDescription = 'Sample Profile';

>       RoleCenter = MyRoleCenter;

>       Caption = 'My profile';

>   }

### Deploy your Lab 03 Rolecenter app.

To deploy your Lab 03 Rolecenter app, follow these steps:

1.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your
    app.

2.  Business Central now opens.

3.  In My Settings, in the Role field select: My Profile

4.  Select Ok

5.  Your Business Central start page now displays your new rolecenter
