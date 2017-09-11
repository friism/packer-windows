& ".\mk_iso.ps1"
& "packer build --only hyperv-iso -var 'hyperv_switchname=Ethernet' -var 'iso_url=D:/iso/16278/Windows_InsiderPreview_Server_16278.iso' -var 'dockerVersion=17.09.0-ce-rc1' -force .\windows_2016_inside
r.json"