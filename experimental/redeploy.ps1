# ------------------------------------------
# Automated Re-deployment
# ------------------------------------------
Import-Module 'C:\Program Files (x86)\Mendix\Service Console\Mendix.Service.Commands.dll'

$APP_NAME = 'MendixDemo'
$MDA_PATH = 'C:\Mendix\deploy-vm-windows-quickstart-master\bin'

# switch the MDA file name to see new deployment 
$MDA_FILE = 'MadSample_1.1.0.5420534a-maroon.mda' 
#$MDA_FILE = 'MadSample-1.0.2.c9158e24.mda' 

$LITERAL_PATH = $MDA_PATH + "\" + $MDA_FILE

# echo "app name is " $APP_NAME

Stop-MxApp $APP_NAME
Update-MxApp $APP_NAME -LiteralPath $LITERAL_PATH -Verbose -Debug #-ErrorAction Ignore
#Start-MxApp $APP_NAME -SynchronizeDatabase
Start-MxApp $APP_NAME
