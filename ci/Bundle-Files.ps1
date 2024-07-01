[CmdletBinding()]
param (
    [Parameter(mandatory = $true)]
    [String]
    $PathToFiles,

    [Parameter(mandatory = $true)]
    [String]
    $DriverName
)

function FindZipTool {
    # Find and download/run 7z
    $7z = 'C:/Program Files/7-Zip/7z.exe'
    "Test if directory [$7z] exists"
    if (Test-Path -Path $7z) {
        "Path exists!"
    } else {
        "Path doesn't exist."
        # Install 7zip PS module
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13
        Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
        Set-PSRepository -Name 'PSGallery' -SourceLocation "https://www.powershellgallery.com/api/v2" -InstallationPolicy Trusted
        Install-Module -Name 7Zip4PowerShell -Force
    }
}

function CompressFiles {
    # Create final zip - GitHub performs compression of artifacts automatically
    Compress-Archive -Path "${PathToFiles}" -DestinationPath ".\drivers\${DriverName}.zip"
    # Remove-Item "${GitDirectory}" -Recurse -Force
}

FindZipTool
CompressFiles $Path