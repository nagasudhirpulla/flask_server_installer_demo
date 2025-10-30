xcopy .\config\  .\dist\config\ /E /Y
pyinstaller server.py --onefile --name AwesomeWebApp --add-data "templates;templates" --add-data "static;static"