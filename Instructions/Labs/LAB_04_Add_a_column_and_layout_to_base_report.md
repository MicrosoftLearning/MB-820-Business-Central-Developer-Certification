---
lab:
    title: 'Lab 04: Add a column and layout to a base report'
    module: 'Module 4: AL Objects'
---

Lab 04 – Add a column and layout to a base report.
==================================================

Overview
--------

In this assignment, you will enhance the **Vendor Purchase Report** by
incorporating the "Payment Terms Code" into the dataset and adjusting the report
layout accordingly.

High Level Tasks
----------------

Complete the following tasks:

1.  Create a new app: **Lab 04 Reporting**

2.  Create a Report Extension

3.  Update the report layout

4.  Deploy your Lab 04 Reporting app.

Detailed Steps
--------------

### Create a new app: Lab 04 Reporting

To create a new app: Lab 04 Reporting, follow these steps:

1.  Press the **Alt+A**, **Alt+L** shortcut keys to trigger the **AL Go!**
    command, and then choose a path to a new empty folder and the version to
    run.

2.  Use **Lab 04 Reporting** as the name of the project.

3.  In the the **launch.json** file, make sure the **EnvironmentName** parameter
    exactly matches the name of your sandbox.

4.  In the Command Palette, select **AL: Download Symbols**.

5.  If there are any errors, then update your **launch.json** file and download
    symbols again.

6.  Delete the **HelloWorld.al** file

7.  Create a new folder named: **src**

### Create a Report Extension

To create a report extension, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **VendorPurchaseList.ReportExt.al**

3.  Add the following code in the file VendorPurchaseList.ReportExt.al

>   al-languageCopy

>   reportextension 50400 "Vendor Purchase List" extends "Vendor - Purchase
>   List"

    ```
           {
               dataset
               {
                   add(Vendor)
                   {
                       column(PaymentTermsCode; "Payment Terms Code")
                       {
                           IncludeCaption = true;
                       }
                   }
               }
           }
    ```
    
### Update the report layout

To create a report extension, follow these steps:

1.  In Business Central, navigate to the **Report Layouts** page.

2.  Filter the list on reports with the Report ID 309

3.  Export the layout of the Vendor Purchase List report.

4.  The layout now downloads as VendorPurchaseList.rdlc

5.  Copy the VendorPurchaseList.rdlc file to the src folder of your Lab 04
    Reporting app.

6.  Rename the layout to: Vendor Purchase List.rdlc

7.  Add a rendering section to the VendorPurchaseList.ReportExt.al, like for
    example:
    
   ```
       al-languageCopy

               rendering{
                   layout("StandardSalesInvoice.rdlc")
                   {
                       Type = RDLC;
                       LayoutFile = './src/Vendor Purchase List.rdlc';
                       Caption = 'Vendor Purchase List';
                       Summary = 'Vendor Purchase List';
                   }
               }
    ```

1.  In the Command Palette, select: **AL:Package**, to update the layout(s) with
    the added field(s).

2.  Open the Vendor Purchase List.rdlc in Report Builder or Visual Studio.

3.  In the layout, add a column after the **VendorName** column

4.  In the column header use: **[\@PaymentTermsCodeCaption]**

5.  In the column row use: **[PaymentTermsCode]**

6.  Save and close the layout file.

### Deploy your Lab 04 Reporting app.

To deploy your Lab 04 Reporting app, follow these steps:

1.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your
    app.

2.  Business Central now opens.

3.  Open the Report Layouts page.

4.  Filter the list on reports with the **Report ID 309**

5.  There are now two layouts for report 309, **Vendor Purchase List**.

6.  Select the layout from your **Lab 04 Reporting** app

7.  Run the report layout

8.  The **Payment Terms Code** should now be visible in the report.
