$mendixUserName = 'you@mendix.com'
$mendixApiKey = 'xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'

$AppID="my-demo-app"
$packageId2="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

$headers = @{
    'Mendix-Username' = $mendixUserName
    'Mendix-Apikey' = $mendixApiKey
}

echo $headers

$destination = "C:\path\to\save\$AppID.mda"
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest  -Uri  https://deploy.mendix.com/api/1/apps/$AppID/packages/$packageId2/download -Headers $headers -OutFile $destination