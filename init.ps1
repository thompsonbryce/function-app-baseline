################################################### NOTE! ###################################################
#
# Use this powershell script to scaffold the naming of your project after creating your own repository
# using this template.
#
#   > init.ps1 -Name <enter_project_name>
#
# Your project name should ideally be one word, if it is more complex then you should fix naming yourself
# as namespace names may not be compatible (i.e. hypens in namespaces are not supported)
#
# This file should be at your earliest convenience

param(
    [string] $Name
)

$oldProjectName = "FunctionAppBaseline";
$newProjectName = $Name

$items = Get-ChildItem . -Recurse -Directory

foreach ($item in $items) {
    if ($item.Name -match $oldProjectName)
    {
        Rename-Item $item.FullName ($item.Name -replace $oldProjectName, $newProjectName)
    }    
}

$files = Get-ChildItem . -Recurse -File -Exclude init.ps1
foreach ($file in $files) {
    (Get-Content $file.PSPath) | ForEach-Object { $_ -replace $oldProjectName, $newProjectName} | Set-Content $file.PSPath
}

Rename-Item . ( $_.Name -replace $oldProjectName, $newProjectName)