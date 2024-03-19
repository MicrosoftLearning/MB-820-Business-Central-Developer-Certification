---
lab:
    title: 'Lab 02: Implement installation and upgrade code in an extension'
    module: 'Module 4: AL Objects'
---
Lab 02 – Implement installation and upgrade code in an extension.
=================================================================

Overview
--------

In this assignment, you will create an installation codeunit and an upgrade codeunit.

The installation codeunit is responsible for populating the SalesPerson/Purchaser table with salespeople. Meanwhile, the upgrade codeunit will take charge of modifying the code field of these newly added salespeople, specifically by substituting underscores with spaces.

High Level Tasks
----------------

Complete the following tasks:

1.  Create a new app: **Lab 02 InstallationUpgradeCode**

2.  Create an Installation Codeunit

3.  Test the installation code

4.  Create an Upgrade Codeunit

5.  Test the Upgrade code

Detailed Steps
--------------

### Create a new app: Lab 02 InstallationUpgradeCode

To create a new app: Lab 02 InstallationUpgradeCode, follow these steps:

1.  Press the **Alt+A**, **Alt+L** shortcut keys to trigger the **AL Go!** command, and then choose a path to a new empty folder and the version to run.

2.  Use **Lab 02 InstallationUpgradeCode** as the name of the project.

3.  In the the **launch.json** file, make sure the **EnvironmentName** parameter exactly matches the name of your sandbox.

4.  In the Command Palette, select **AL: Download Symbols**.

5.  If there are any errors, then update your **launch.json** file and download symbols again.

6.  Delete the **HelloWorld.al** file

7.  Create a new folder named: **src**

### Create an Installation Codeunit

To create an Installation Codeunit, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **Installation.Codeunit.al**.

3.  Add the following code in the Installation.Codeunit.al file:

    ```
       al-languageCopy  
       codeunit 50200 Installation
           {  
               Subtype = Install;
               trigger OnInstallAppPerDatabase();
               var
                   myAppInfo: ModuleInfo;
               begin
                   NavApp.GetCurrentModuleInfo(myAppInfo);
                   if myAppInfo.DataVersion = Version.Create(0, 0, 0, 0) then
                       HandleFreshInstall()
                   else
                       HandleReinstall();
               end;
               local procedure HandleFreshInstall();
               begin
                   CreateSalespeople();
               end;
               local procedure HandleReinstall();
               begin
               end;
               local procedure CreateSalespeople()
               var
                   SalespersonPurchaser: Record "Salesperson/Purchaser";
                   Counter: Integer;
                   SalespersonCode: code[20];
               begin
                   for Counter := 1 to 5 do begin
                       clear(SalespersonPurchaser);
                       SalespersonCode := 'SP_' + Format(Counter);
                       if not SalespersonPurchaser.Get(SalespersonCode) then begin
                           SalespersonPurchaser.Code := SalespersonCode;
                           SalespersonPurchaser.Name := 'Salesperson ' +
                               Format(Counter);
                           SalespersonPurchaser.Insert(true);
                       end
                   end;
               end;
           }
    ```

### Test the installation code

To test the installation code, follow these steps:

1.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your app.

2.  Business Central now opens.

3.  Open the **Salespeople/Purchasers** page.

4.  The 5 salespeople should be in the list and their code start with **SP\_**

### Create an Upgrade Codeunit

To create an upgrade codeunit, follow these steps:

1.  Create a new .al file in the src folder.

2.  Name the file **Upgrade.Codeunit.al**.

3.  Add the following code in the Upgrade.Codeunit.al file:
   
    ```
        al-languageCopy  
        codeunit 50201 Upgrade
           {
               Subtype = Upgrade;
               trigger OnCheckPreconditionsPerCompany();
               var
                   myInfo: ModuleInfo;
               begin
                   if NavApp.GetCurrentModuleInfo(myInfo) then
                       if myInfo.DataVersion = Version.Create(1, 0, 0, 1) then
                           error('The upgrade is not compatible');
               end;
               trigger OnUpgradePerCompany()
               begin
                   UpdateSalespeople();
               end;
               local procedure UpdateSalespeople()
               var
                   SalespersonPurchaser: Record "Salesperson/Purchaser";
                 Counter: Integer;
                  OldSalespersonCode, NewSalespersonCode : code[20];
               begin
                   for Counter := 1 to 5 do begin
                       clear(SalespersonPurchaser);
                       OldSalespersonCode := 'SP_' + Format(Counter);
                       NewSalespersonCode := 'SP ' + Format(Counter);
                       if SalespersonPurchaser.Get(OldSalespersonCode) then
                           SalespersonPurchaser.Rename(NewSalespersonCode);
                   end;
               end;
           }
    ```

### Test the Upgrade code

To test the code in the upgrade codeunit, follow these steps:

1.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your app.

2.  Business Central now opens.

3.  Open the **Salespeople/Purchasers** page.

4.  Nothing has changed, because your upgrade code did not execute. In order for upgrade code to run, you need to increment the version number in the app.json file.

5.  Open the app.json file

6.  In the app.json file set the version to **1.0.0.1**

7.  In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your app.

8.  Business Central now opens.

9.  Open the **Salespeople/Purchasers** page.

10. The codes of the recently published salespeople have now changed. The underscore was replaced by a space.

11. Open the app.json file

12. In the app.json file set the version to **1.0.0.2**

13. In VScode, use the CTRL+F5 shortcut, or the command Palette to publish your app.

14. An error is thrown. This is because of the code in the **OnCheckPreconditionsPerCompany**() trigger in your upgrade codeunit. When the version of the app you are upgrading is 1.0.0.1, then the error is thrown.
