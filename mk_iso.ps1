$isoFolder = "answer-iso"
if (test-path $isoFolder){
  remove-item $isoFolder -Force -Recurse
}

mkdir $isoFolder

Copy-Item .\scripts\enable-winrm.ps1 $isoFolder\
Copy-Item .\answer_files\2016_insider\Autounattend.xml $isoFolder\

$isoOutput = "windows\2016_insider\answer.iso"
Remove-Item -Force $isoOutput
& .\mkisofs.exe -r -iso-level 4 -UDF -o $isoOutput $isoFolder

if (test-path $isoFolder){
  remove-item $isoFolder -Force -Recurse
}