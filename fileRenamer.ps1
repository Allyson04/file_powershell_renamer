#folder files setup
$files=gci -File -Name;
 
foreach($file in $files){
    $OriginalFilename = $file; 
    Invoke-Item $pwd\$OriginalFilename; 
    $OriginalFilenameWithoutExtension = Split-Path $OriginalFilename -LeafBase;
    $newFilenameWithoutExtension = Read-Host -Prompt 'New Filename?';
    $newFilename = $OriginalFilename.replace($OriginalFilenameWithoutExtension, $newFilenameWithoutExtension);
    Rename-Item -Path $pwd\$OriginalFilename -NewName $newFileName -Confirm;
    Start-Sleep -s 2
}