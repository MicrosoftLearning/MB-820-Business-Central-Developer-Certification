---
lab:
    title: 'Lab 01: Create an extension containing a: table, table extension, pages, page extension.'
    module: 'Module 4: Install, develop, and deploy for the Business Central application'
---

Lab 01 - Create an extension containing a: table, table extension, pages, page extension.
=========================================================================================

Overview
--------

In this assignment, you will develop a Microsoft Dynamics 365 Business Central
application to enhance the vendor management process. The goal is to provide a
mechanism for rating vendors and customizing the rating categories. This system
will facilitate more accurate vendor evaluation and support better
decision-making.

The objective is to create a custom application for vendor rating in Microsoft
Dynamics 365 Business Central. This application should allow vendors to receive
ratings classified into categories such as "Excellent," "Very Good," and "Good
Average." Users should have the ability to edit and configure these rating
values.

High Level Tasks
----------------

Complete the following tasks:

1.  Create a new app: Lab 01 Vendor Rating

2.  Create a table for Vendor Ratings

3.  Create pages for Vendor Ratings

4.  Add a Rating field to the Vendor table

5.  Add a Rating field to the Vendor Card and Vendor List.

6.  Add a PermissionSet.

7.  Deploy your Vendor Rating app.

Detailed Steps
--------------

### Create a new app: Lab 01 Vendor Rating

To create a new app: Lab 01 Vendor Rating, follow these steps:

1.  Press the **Alt+A**, **Alt+L** shortcut keys to trigger the **AL Go!**
    command, and then choose a path to a new empty folder and the version to
    run.

2.  Use **Lab 01 Vendor Rating** as the name of the project.

3.  In the the **launch.json** file, make sure the **EnvironmentName** parameter
    exactly matches the name of your sandbox.

4.  In the Command Palette, select **AL: Download Symbols**.

5.  If there are any errors, then update your **launch.json** file and download
    symbols again.

6.  Delete the **HelloWorld.al** file

7.  Create a new folder named: **src**

### Create a table for Vendor Ratings

To create a table for Vendor Ratings, follow these steps:

1.  Create a new .al file in the src folder.

    1.  To create a new table in your extension, first create a new file. You
        can create a new file by selecting the New File button in the side bar
        of Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **VendorRating.Table.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    VendorRating.Table.al file:  
    al-languageCopy  
    table 50100 VendorRating
    
           {
        
               Caption = 'Vendor Rating';
               DataClassification = CustomerContent;
           LookupPageId = "VendorRating List";
               fields
               {
                   field(1; Code; Code[10])
                   {
                       DataClassification = CustomerContent;
                       Caption = 'Rating Code';
                   }
                   field(2; Description; Text[50])
                   {
                       DataClassification = CustomerContent;
                       Caption = 'Rating Description';
                   }
               }
               keys
               {
                   key(PK; Code)
                   {
                       Clustered = true;
                   }
               }
           }

### Create pages for Vendor Ratings

To create a Card page for Vendor Ratings, follow these steps:

1.  Create a new .al file in the src folder.

    1.  To create a new page in your extension, first create a new file. You can
        create a new file by selecting the New File button in the side bar of
        Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **VendorRatingCard.Page.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    VendorRatingCard.Page.al file:  
    al-languageCopy  
    page 50100 "VendorRating Card"

           {
               ApplicationArea = All;
               Caption = 'VendorRating Card';
               PageType = Card;
               SourceTable = VendorRating;
               layout
               {
                   area(content)
                   {
                       group(General)
                       {
                           Caption = 'General';
                           field("Code"; Rec."Code")
                           {
                               ToolTip = 'Specifies the value of the Rating Code
           field.';
                           }
                           field(Description; Rec.Description)
                           {
                               ToolTip = 'Specifies the value of the Rating Description
           field.';
                           }
                       }
                   }
               }
           }

To create a List page for Vendor Ratings, follow these steps:

1.  Create a new .al file in the src folder.

    1.  To create a new page in your extension, first create a new file. You can
        create a new file by selecting the New File button in the side bar of
        Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **VendorRatingCard.Page.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    VendorRatingCard.Page.al file:  
    al-languageCopy  
    page 50101 "VendorRating List"

           {
               ApplicationArea = All;
               Caption = 'VendorRating List';
               PageType = List;
               SourceTable = VendorRating;
               UsageCategory = Lists;
               CardPageId = "VendorRating Card";
               layout
               {
                   area(content)
                   {
                       repeater(General)
                       {
                           field("Code"; Rec."Code")
                           {
                               ToolTip = 'Specifies the value of the Rating Code
           field.';
                           }
                           field(Description; Rec.Description)
                           {
                               ToolTip = 'Specifies the value of the Rating Description
           field.';
                           }
                       }
                   }
               }
           }

### Add a Rating field to the Vendor table.

To add a Vandor Rating field to the Vendor table, follow these steps:

1.  Create a new .al file in the src folder.

    1.  To create a new table extension in your extension, first create a new
        file. You can create a new file by selecting the New File button in the
        side bar of Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **Vendor.TableExt.al.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    Vendor.TableExt.al.alfile:  
    al-languageCopy

           tableextension 50100 Vendor extends Vendor
           {
               fields
               {
                   field(50100; "Vendor Rating"; Code[10])
                   {
                       Caption = 'Vendor Rating';
                       DataClassification = CustomerContent;
                       TableRelation = VendorRating;
                   }
               }
           }

### Add a Rating field to the Vendor Card and Vendor List

To add a Vendor Rating field to the Vendor Card and List, follow these steps:

1.  Create a new .al file in the src folder.

    1.  To create a new page extension in your extension, first create a new
        file. You can create a new file by selecting the New File button in the
        side bar of Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **VendorCard.PageExt.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    VendorCard.PageExt.al file:  
    al-languageCopy  
    pageextension 50100 VendorCard extends "Vendor Card"

           {
               layout{
                   addlast(General)
                   {
                       field("Vendor Rating"; Rec."Vendor Rating")
                       {
                        ToolTip = 'The rating of the vendor.';  
        ApplicationArea = All;
        
                       }
                   }
               }    
           }

1.  Create a new .al file in the src folder.

    1.  To create a new page extension in your extension, first create a new
        file. You can create a new file by selecting the New File button in the
        side bar of Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **VendorList.PageExt.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    VendorList.PageExt.alfile:  
    al-languageCopy  
    pageextension 50101 VendorList extends "Vendor List"

           {
               layout
               {
                   addlast(Control1)
                   {
                       field("Vendor Rating"; Rec."Vendor Rating")
                       {
                           ToolTip = 'The rating of the vendor.';
           ApplicationArea = All; 
                       }
                   }
               } 
           }

### Add a PermissionSet

To add a Permissionset to the Vendor Rating app, follow these steps:

1.  Create a new .al file in the src folder.

    1.  To create a new permissionset in your extension, first create a new
        file. You can create a new file by selecting the New File button in the
        side bar of Visual Studio Code.

    2.  Make sure that the filename ends with .al. In this example, you might
        want to use the name **VendorRating.permissionset.al**.

2.  Add the code to the table. Copy the following code and paste it in the
    VendorRating.permissionset.al file:  
    al-languageCopy  
    permissionset 50100 VendorRating

           {
               Assignable = true;
               Permissions = tabledata VendorRating=RIMD,
                   table VendorRating=X,
                   page "VendorRating Card"=X,
                   page "VendorRating List"=X;
           }

### Deploy your Vendor Rating app.

To deploy your Vendor Rating app, follow these steps:

1.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your
    app.

2.  Business Central now opens.

3.  Navigate to the Vendor Card.

4.  There should be Vendor Rating field in the General tab.

5.  Select the Vendor Rating field dropdown.

6.  The dropdown is currently empty and you need to add the following ratings,
    using the +New action.

7.  Add the following ratings: "Excellent," "Very Good," and "Good Average."

8.  Select a Rating and apply it to the selected Vendor.
