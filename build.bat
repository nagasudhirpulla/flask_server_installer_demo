xcopy .\config\  .\dist\config\ /E /Y
rem /E means copy including sub-directories

pyinstaller server.py --onefile --name AwesomeWebApp --add-data "templates;templates" --add-data "static;static"
rem --onefile creates one exe file
rem --name is the name of the exe file generated
rem --add-data bundles a folder into the exe. Syntax is --add-data "sourcepath;bundlepath". for linux/mac, the syntax is --add-data "sourcepath:bundlepath" 