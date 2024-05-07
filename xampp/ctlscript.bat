@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist G:\xampp\hypersonic\scripts\ctl.bat (start /MIN /B G:\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist G:\xampp\ingres\scripts\ctl.bat (start /MIN /B G:\xampp\ingres\scripts\ctl.bat START)
if exist G:\xampp\mysql\scripts\ctl.bat (start /MIN /B G:\xampp\mysql\scripts\ctl.bat START)
if exist G:\xampp\postgresql\scripts\ctl.bat (start /MIN /B G:\xampp\postgresql\scripts\ctl.bat START)
if exist G:\xampp\apache\scripts\ctl.bat (start /MIN /B G:\xampp\apache\scripts\ctl.bat START)
if exist G:\xampp\openoffice\scripts\ctl.bat (start /MIN /B G:\xampp\openoffice\scripts\ctl.bat START)
if exist G:\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B G:\xampp\apache-tomcat\scripts\ctl.bat START)
if exist G:\xampp\resin\scripts\ctl.bat (start /MIN /B G:\xampp\resin\scripts\ctl.bat START)
if exist G:\xampp\jetty\scripts\ctl.bat (start /MIN /B G:\xampp\jetty\scripts\ctl.bat START)
if exist G:\xampp\subversion\scripts\ctl.bat (start /MIN /B G:\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist G:\xampp\lucene\scripts\ctl.bat (start /MIN /B G:\xampp\lucene\scripts\ctl.bat START)
if exist G:\xampp\third_application\scripts\ctl.bat (start /MIN /B G:\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist G:\xampp\third_application\scripts\ctl.bat (start /MIN /B G:\xampp\third_application\scripts\ctl.bat STOP)
if exist G:\xampp\lucene\scripts\ctl.bat (start /MIN /B G:\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist G:\xampp\subversion\scripts\ctl.bat (start /MIN /B G:\xampp\subversion\scripts\ctl.bat STOP)
if exist G:\xampp\jetty\scripts\ctl.bat (start /MIN /B G:\xampp\jetty\scripts\ctl.bat STOP)
if exist G:\xampp\hypersonic\scripts\ctl.bat (start /MIN /B G:\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist G:\xampp\resin\scripts\ctl.bat (start /MIN /B G:\xampp\resin\scripts\ctl.bat STOP)
if exist G:\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT G:\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist G:\xampp\openoffice\scripts\ctl.bat (start /MIN /B G:\xampp\openoffice\scripts\ctl.bat STOP)
if exist G:\xampp\apache\scripts\ctl.bat (start /MIN /B G:\xampp\apache\scripts\ctl.bat STOP)
if exist G:\xampp\ingres\scripts\ctl.bat (start /MIN /B G:\xampp\ingres\scripts\ctl.bat STOP)
if exist G:\xampp\mysql\scripts\ctl.bat (start /MIN /B G:\xampp\mysql\scripts\ctl.bat STOP)
if exist G:\xampp\postgresql\scripts\ctl.bat (start /MIN /B G:\xampp\postgresql\scripts\ctl.bat STOP)

:end

