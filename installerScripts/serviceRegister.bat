rem delete service if exists
call net stop awesome_webapp
call net delete awesome_webapp
rem insall service
call nssm.exe install awesome_webapp "%cd%\AwesomeWebApp.exe"
call nssm.exe set awesome_webapp AppStdout "%programdata%\Awesome Web App\awesome_webapp.log"
call nssm.exe set awesome_webapp AppStderr "%programdata%\Awesome Web App\awesome_webapp.log"
call nssm.exe set awesome_webapp AppStdoutCreationDisposition 4
call nssm.exe set awesome_webapp AppStderrCreationDisposition 4
call nssm.exe set awesome_webapp AppRotateFiles 1
call nssm.exe set awesome_webapp AppRotateOnline 1
call nssm.exe set awesome_webapp AppRotateBytes 1048576
call net start awesome_webapp