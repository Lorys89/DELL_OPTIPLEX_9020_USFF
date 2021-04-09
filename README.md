[![](https://img.shields.io/badge/Gitter%20HL%20Community-Chat-informational?style=flat&logo=gitter&logoColor=white&color=ed1965)](https://gitter.im/Hackintosh-Life-IT/community)
[![](https://img.shields.io/badge/EFI-Release-informational?style=flat&logo=apple&logoColor=white&color=9debeb)](https://github.com/Lorys89/DELL_OPTIPLEX_9020_USFF/releases)
[![](https://img.shields.io/badge/Telegram-HackintoshLifeIT-informational?style=flat&logo=telegram&logoColor=white&color=5fb659)](https://t.me/HackintoshLife_it)
[![](https://img.shields.io/badge/Facebook-HackintoshLifeIT-informational?style=flat&logo=facebook&logoColor=white&color=3a4dc9)](https://www.facebook.com/hackintoshlife/)
[![](https://img.shields.io/badge/Instagram-HackintoshLifeIT-informational?style=flat&logo=instagram&logoColor=white&color=8a178a)](https://www.instagram.com/hackintoshlife.it_official/)
[![](https://img.shields.io/badge/PayPal-HackintoshLifeIT-informational?style=flat&logo=paypal&logoColor=white&color=00B2EE)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RWBVVWL8H9JC2&source=url)

# Dell Optiplex 9020 USFF Hackintosh

EFI for Dell Optiplex 9020 USFF with OpenCore bootloader

![descrizione](./Screenshot/pc.jpg)

### Computer Spec:

| Component        | Brank                              |
| ---------------- | ---------------------------------- |
| CPU              | Intel i5 4570s (4C-4T 6MB HSW)     |
| iGPU             | Intel® HD Graphics 4600            |
| Lan              | Intel I217LM                       |
| Wifi + BT        | BCM94360HMB (AW-CB160H)            |
| Audio            | Realtek ALC280                     |
| Ram              | 8 GB DDR3 1600 Mhz                 |
| SSD              | SAMSUNG 850 EVO 250 GB (MACOS)     |
| SSD              | CRUCIAL BX500 120 GB (WINDOWS)     |
| SmBios           | Macmini 7,1                        |
| BootLoader       | OpenCore 0.6.8                     |
| macOS            | Big Sur 11.3 (Beta 6)              |

![infomac](./Screenshot/infomac.png)

## Peripherals

![infohack](./Screenshot/hackintooldevice.png)
![infodp2](./Screenshot/DpciScreen2.png)
![infopci](./Screenshot/PCISEZ.png)

### What works and What doesn't or WIP:

- [x] Intel HD Graphics 4600 iGPU HDMI/DP Output
- [x] ALC280 Internal Speakers
- [x] ALC280 HDMI/DP Audio Output
- [x] ALC280 jack microphone
- [x] ALC280 jack headphones
- [x] All USB Ports 
- [x] SpeedStep / Sleep / Wake
- [x] All Sensors (CPU, SATA, FAN)
- [x] Apple VTD
- [x] Intel I217LM LAN
- [x] Wi-Fi and Bluetooth BCM94360HMB (AW-CB160H) Module
- [x] HID Key PWRB & SLPB 
- [x] CONTROLLER SATA III
- [x] NVRAM
- [x] Windows 10 boot from OpenCore

### Special Config:

- Usb port mapping performed
- SSDT-Hack Essential patch
- Applied cosmetics PCI Dev

See [ioreg](./ioregmac.ioreg) for more clarification

### MacOS bootable USB creation:
- Read the Dortania guide for creating your USB from Windows or macOS
- [Guide Dortania](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/) - USB creation


## Bios settings
### Enable :
* SATA Operation : AHCI
* Integrated NIC : Enable

### Disable : 
* Secure Boot
* Serial Port
* Enable UEFI Network stack
* Computrace
* TPM Security
* ASPM
* cfg lock and DVMT DO AT YOUR OWN RISK!!! It may brick your PC.


## Restart and at the opencore GUI, choose the modGRUBShell.efi

![CFG-LOCK](./Screenshot/CFG-LOCK.png)

For set CFG LOCK Disabled

setup_var 0xDA2 0x00

![DMT-PRE](./Screenshot/DVMT-PRE.png)

For set DVMT PRE Allocated to 64 MB

setup_var 0x263 0x02



## Credits

- [Apple](https://apple.com) for macOS;
- [Acidanthera](https://github.com/acidanthera) for OpenCore and all the lovely hackintosh work.
- [Dortania](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/icelake.html) For great and detailed guides.
- [Hackintoshlifeit](https://github.com/Hackintoshlifeit) Support group for installation and post installation.

# If you need help please contact us on [Telegram](https://t.me/HackintoshLife_it) or [Web](https://www.hackintoshlife.it/)c
