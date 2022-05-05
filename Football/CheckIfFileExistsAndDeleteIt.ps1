<#Check if a file exists and delete it#>
<#I need to delete the CSV file if it exists otherwise it will append a whole bunch of duplicate rows

This has been included as part of the master PlayerHistory Data script but I'm going seperate it out so people can 
reference just this snippet  

We set a variable $filename to be the file path, We test if it exists using Test-Path.

We wrap the Test-Path call in an IF statement, if Test-Path Returns true we can delete the file#>


$Filename = "C:\FPL\PLayerDataLoopTest.csv"
If (Test-Path $Filename ) {
Remove-Item -Path $Filename
}