param ([string]$ip, [string]$destination)

& ".\publish-windows.ps1"

# only copy newer files; remove files that were deleted in the source folder
& robocopy.exe /MIR ".\bin\Debug\netcoreapp2.0\win8-arm\publish" "\\$ip\$destination"
