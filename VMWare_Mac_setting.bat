rem This is the name of virtual machine
rem 这个值是虚拟机名字
set virtual_machine_name="MacOS X 12"

VBoxManage.exe modifyvm %virtual_machine_name% --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage.exe setextradata %virtual_machine_name% VBoxInternal/Devices/efi/0/Config/DmiSystemProduct “MacBookPro15,1”
VBoxManage.exe setextradata %virtual_machine_name% "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Mac-551B86E5744E2388"
VBoxManage.exe setextradata %virtual_machine_name% "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage.exe setextradata %virtual_machine_name% "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
rem if not work, try change 1 of last line as 0
rem 上一行如果1不行就试试0

