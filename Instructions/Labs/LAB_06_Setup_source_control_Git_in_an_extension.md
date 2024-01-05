---
lab:
    title: 'Lab 05: Develop custom API pages and queries'
    module: 'Module 6: Dev Tools'
---

Lab 06 – Setup source control, Git, in an extension.
====================================================

Overview
--------

In this assignment, you will install and configure Git, a vital version control
system. By successfully setting up Git, you'll establish a robust foundation for
collaborative software development and source code management.

Upon completing this lab, you will have a fully functional Git setup, enabling
efficient version control, collaboration, and streamlined software development
processes.

High Level Tasks
----------------

Complete the following tasks:

1.  Install and configure Git.

Detailed Steps
--------------

### Install and configure Git 

To install Git, follow these steps:

1.  Open a web browser and download the Git Windows Installer. Use the following
    link to download the installer: <https://git-scm.com/download/win>

2.  If the download is finished, run the installer.

3.  Use the the default settings.

4.  In the wizard step where you need to select the default editor, change the
    value to **Use Visual Studio Code as Git's default editor**.

5.  Make sure that the **Git Credential Manager Core** (or Git Credential
    Manager) is selected. Be aware that the .NET Framework 4.5.1 (or later)
    needs to be installed.

6.  Open a Command Prompt and type **git --version**. This displays the
    installed Git Version.

7.  Open **Visual Studio Code**, select **Terminal** in the menu bar and select
    **New Terminal**. This will open a PowerShell or a regular command prompt at
    the bottom of the Visual Studio Code window.

8.  Set your name and email. Use the command **git config** and enter the email
    address you use for your Business Central sandbox:

    1.  git config --global user.name "your name"

    2.  git config --global user.email "youremailaddress"

9.  Use the command **git config --list** to show all settings.

    1.  git config --list
