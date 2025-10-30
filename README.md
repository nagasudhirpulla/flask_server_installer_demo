This is a demo web app that runs as a windows service and is installed as a software using InnoSetup

# Web app
* The web app is a simple flask web application
* The application is built as an exe using pyinstaller (install it using `pip install pyinstaller`)
* The application exe is generated in the dist folder 

# Windows service
* The web app exe file can run as a windows service using `nssm.exe`
* The `serviceRegister.bat` script will run the web application exe as a windows background service
* The `serviceDelete.bat` script will delete the web application windows background service

# Installer for the software
* Inno Setup is used to create and installer for the software files
* The `installerGenScript.iss` file contains the script to generate the software installer
* It bundles the exe, bat, readme, favicon and other required files into the installer
* The [Files] section specifies the files that will be bindled in the installer. It also specifies the folders where the files are installed
* The [RUN] section specifies to run the file `serviceRegister.bat` after all the application files are installed
* The [UninstallRun] section specifies to run the file `serviceDelete.bat` before removing the installed files
* The [Icons] section creates shortcut to 2 files 
    * `config.json` which facilitates configuring the server
    * `serviceRestart.bat` which restarts the server
* The [Dirs] section specifies the folders that will be ensured during the installation
* The [Setup] section specifies the general configuration of the installer like name, version, icon etc

## Steps to run the demo
* Run `build.bat` to create exe files in the dist folder
* Open `installerGenScript.iss` file in Inno Setup and run Build->Compile from the top menu. This generates the installer exe
* Run the installer to install the server. This runs the server as a windows background service
* Search for "Configure Awesome Web App" in start menu to edit the server's config.json file
* Search for "Restart Awesome Web App" in start menu to restart the server
* The software can be uninstalled just like any other software in the control panel or "Add or remove programs" menu