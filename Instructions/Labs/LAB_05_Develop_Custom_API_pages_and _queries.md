---
lab:
    title: 'Lab 05: Develop custom API pages and queries'
    module: 'Module 6: Dev Tools'
---

Lab 05 – Develop custom API pages and queries.
==============================================

Overview
--------

In this assignment, you will create two distinct APIs - one for managing items
and another for querying item ledgers. These APIs will provide efficient access
to critical data, streamlining processes for better item management and ledger
inquiries.

High Level Tasks
----------------

Complete the following tasks:

1.  Create a new app: **Lab 05 APIs**

2.  Create a Page API for Items

3.  Create a Query API for Item Ledgers

4.  Deploy your Lab 05 APIs app.

Detailed Steps
--------------

### Create a new app: Lab 05 APIs

To create a new app: Lab 05 APIs, follow these steps:

1.  Press the **Alt+A**, **Alt+L** shortcut keys to trigger the **AL Go!**
    command, and then choose a path to a new empty folder and the version to
    run.

2.  Use **Lab 05 APIs** as the name of the project.

3.  In the the **launch.json** file, make sure the **EnvironmentName** parameter
    exactly matches the name of your sandbox.

4.  In the Command Palette, select **AL: Download Symbols**.

5.  If there are any errors, then update your **launch.json** file and download
    symbols again.

6.  Delete the **HelloWorld.al** file

7.  Create a new folder named: **src**

### Create a Page API for Items

To create a page API for items, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **Items.Page.al**

3.  Add the following code in the file Items.Page.al

>   al-languageCopy  
>   page 50100 Items

           {
               APIGroup = 'powerBI';
               APIPublisher = 'contoso';
               APIVersion = 'v1.0';
               ApplicationArea = All;
               Caption = 'items';
               DelayedInsert = true;
               EntityName = 'item';
               EntitySetName = 'items';
               PageType = API;
               SourceTable = Item;
               layout
               {
                   area(content)
                   {
                       repeater(General)
                       {
                           field(no; Rec."No.")
                           {
                               Caption = 'Item No.';
                           }
                           field(description; Rec.Description)
                           {
                               Caption = 'Item Description';
                           }
                           field("type"; Rec."Type")
                           {
                               Caption = 'Type';
                           }
                           field(unitPrice; Rec."Unit Price")
                           {
                               Caption = 'Unit Price';
                           }
                           field(unitCost; Rec."Unit Cost")
                           {
                               Caption = 'Unit Cost';
                           }
                           field(blocked; Rec.Blocked)
                           {
                               Caption = 'Blocked';
                           }
                           field(itemCategoryCode; Rec."Item Category Code")
                           {
                               Caption = 'Item Category Code';
                         }
                       }
                   }
               }
           }

### Create a Query API for Item Ledgers

To create a query API for item ledgers, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **ItemLedgers.Query.al**

3.  Add the following code in the file ItemLedgers.Query.al

>   al-languageCopy  
>   query 50100 ItemLedgers

           {
               APIGroup = 'powerBI';
               APIPublisher = 'contoso';
               APIVersion = 'v1.0';
               EntityName = 'itemLedger';
               EntitySetName = 'itemLedgers';
               QueryType = API;
               elements
               {
                   dataitem(itemLedgerEntry; "Item Ledger Entry")
                   {
                       column(itemNo; "Item No.")
                       {
                           Caption = 'Item No.';
                       }
                       column(entryType; "Entry Type")
                       {
                           Caption = 'Entry Type';
                       }
                       column(documentType; "Document Type")
                       {
                           Caption = 'Document Type';
                       }
                       column(postingDate; "Posting Date")
                       {
                           Caption = 'Posting Date';
                       }
                       column(salesAmountActual; "Sales Amount (Actual)")
                       {
                           Caption = 'Sales Amount (Actual)';
                           Method = Sum;
                       }
                       column(quantity; Quantity)
                       {
                           Caption = 'Quantity';
                           Method = Sum;
                       }
                   }
               }
           }

### Deploy your Lab 04 Reporting app.

To deploy your Lab 04 Reporting app, follow these steps:

1.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your
    app.

2.  Business Central now opens.
