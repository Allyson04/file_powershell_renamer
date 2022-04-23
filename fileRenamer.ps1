#folder files setup
$files=gci -File -Name;
$trashcode=1

foreach($file in $files){
    $OriginalFilename = $file; 
    
    # opens default program defined to file
    explorer $pwd\$OriginalFilename
    # $wprocess = (start-process explorer $pwd\$OriginalFilename -passthru)

    # Get filename without extension
    $OriginalFilenameWithoutExtension = Split-Path $OriginalFilename -LeafBase;

    # get name input
    $newFilenameWithoutExtension = Read-Host -Prompt 'New Filename?';


    switch ($newFilenameWithoutExtension)
    {
        # If nothing is input, don't change the filename
	    "" {$newFilename = $OriginalFilename; break;}

        # if input is "trash", change the file so it can be deleted after all files renaming
	    "trash" {$trashcode++; $newFilename = $OriginalFilename.replace($OriginalFilenameWithoutExtension, ("trash"+$trashcode)); break;}

        # if any other string except  "" and "trash" is input, rename with it
	    Default {$newFilename = $OriginalFilename.replace($OriginalFilenameWithoutExtension, $newFilenameWithoutExtension); break;}
    }
    
    echo $newFileName;

    #echo $wprocess;
    #taskkill /PID $wprocess.id /f;
	
    Rename-Item -Path $pwd\$OriginalFilename -NewName $newFileName;
}