KLTableViewController
======================

![ScreenShot](https://www.evernote.com/shard/s5/sh/7d08a542-2a0e-4bc5-863c-fbff9e1e6f5b/f4871550e91f43e75a3eaf346bd01230/deep/0/sshot.png)  

KLTableViewController written for the Web Xojo Target.
This class is a view controller to manage cells (table). It was designed from the ground up for speed and performance.
It provides several options to help reduce the loading time (like lazy loading of cells). You may see a simple example at: 
[TableView demo app](http://labs.movic.mx/cgi-bin/KLTableView/kltableview.cgi)


**Written by :** Francisco Lobo de la Garza  
**From:** Monterrey N.L Mexico  
**Contact:** Twitter: [@KikoLobo](http://twitter.com/KikoLobo) or at XOJO Forums (Francisco Lobo)  
**Website:** [http://www.kikolobo.com](http://www.kikolobo.com)  
**Version:** 0.1 (Beta) [August 11th 2013]  

  
####HOW TO USE####
  - Copy the folder named KLTableViewController from the sample project to your project.
  - Add the KLTableViewController class to your WebPage or view.
  - Implement the NumberOfRowsForIndex and CellForRowAtIndex events.
  - Call reload method (See example for details on inserts, deletes, etc.
  - Cell's are standard WebContainers however most implement KLTableViewCell interface to support selection.
  - Usually you keep the cells in an array in the WebPage or view and supply each cell as required by the controller.
  - (See examples for complete details on all functions)

####RESTRICTIONS####

  This piece of code is free as free speech. The only condition for use is that you DON'T repackage this code in whole or in part and sell it. 
  Also welcomed but not mandatory are credits in your software about page: 
     "Web Table View based on KLTableViewController for XOJO written by Francisco Lobo de la Garza"

  You CAN however fully use this code in your commercial or paid application in whole or in part without license, permission or payment.

  Please contribute to the codebase, and feel free to send any suggestions either thru twitter or thru the XOJO forums.
  

####REVISION HISTORY####
  Version 0.1 (Beta)  -  August 11th 2013
    - Initial Beta Release
   
   **Known Issues** (0.1): No Kown Issues at this time.
