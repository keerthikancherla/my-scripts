@echo off
:choice
echo "****************** Status Dashboards **********************"
echo Running Dashboards first time on this machine ?
set /P c=[Y/N]?
if /I "%c%" EQU "Y" goto :Revolver 
if /I "%c%" EQU "N" goto :DBpages

:Revolver
start "chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="AEMDB" https://portal.azure.com/onmicrosoft.com/dashboard/private
echo Please Log-in
echo Select "YES" when prompted for "Stay signed in?" and then
pause
echo Please install Revolver extension
start "Revolverext" "https://chrome.google.com/webstore/detail/revolver-tabs/dlknooajieciikpedpldejhhijacnbda?hl=en-US"
echo After install
pause
goto :choice2
:choice2
echo Now, Right click on the installed icon and select options.
echo Set seconds = 15 and check mark both Auto Start and Reload. 
echo Click save at the bottom and CLOSE THE CHROME BROWSER.
set /P c=Done? [Y/N]?
if /I "%c%" EQU "Y" goto :DBpages 
if /I "%c%" EQU "N" goto :Revolver
:DBpages
echo Dashboards will be opening in full screen mode, Press "ALT + F4" to exit during the display.
timeout 5
start "chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="AEMDB" --kiosk https://www.website-of-your-choice.com/
timeout 5
start http://stats.pingdom.com/5xbw03sjg6h3/4362480
timeout 5
start https://portal.azure.com/web.onmicrosoft.com/dashboard/private/dashboardID
timeout 5
start "Publisher2" "ttps://portal.azure.com/web.onmicrosoft.com/dashboard/private/dashboardID"
timeout 5
start "Healthreports" "https://aem.author.com/libs/granite/operations/content/healthreports/healthreportlist.html"
timeout 5
start "RequestPerformance" "https://aem.author.com/libs/granite/operations/content/diagnosis/tool.html/granite_requestperformance"
timeout 5
start "QueryPerformance" "https://aem.author.com/libs/granite/operations/content/diagnosis/tool.html/granite_queryperformance"
timeout 5
start "Monitor" "https://aem.author.com/libs/granite/operations/content/monitoring/page.html"
pause 
exit
