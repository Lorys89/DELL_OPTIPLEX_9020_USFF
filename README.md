# Dell Optiplex 3060 MFF Hackintosh

EFI for Dell Optiplex 9020 USFF with OpenCore bootloader

![descrizione](./Screenshot/pc.jpg)

### Computer Spec:

| Component        | Brank                              |
| ---------------- | ---------------------------------- |
| CPU              | Intel i5 4570s                     |
| iGPU             | Intel® HD Graphics 4600            |
| Lan              | Intel I217LM                       |
| Wifi + BT        | Broadcom  4360                     |
| Audio            | Realtek ALC280                     |
| Ram              | 8 GB DDR3 1600 Mhz                 |
| SSD              | SAMSUNG 850 EVO 250 GB             |
| SSD              | CRUCIAL BX500 120 GB              |
| SmBios           | Macmini 7,1                        |
| BootLoader       | OpenCore 0.6.4                     |

![infobigsur](./Screenshot/infocacbigsur.png)

## Peripherals

![infohack](./Screenshot/hackintooldevice.png)
![infodp2](./Screenshot/DpciScreen2.png)
![infopci](./Screenshot/PCISEZ.png)

### What works and What doesn't or WIP:

- [x] Intel HD Graphics 4600 iGPU HDMI Output
- [x] ALC280 Internal Speakers
- [x] ALC280 HDMI Audio Output
- [x] All USB Ports 
- [x] SpeedStep / Sleep / Wake
- [x] Intel I217LM LAN
- [x] WIFI & BT
- [x] NVRAM
- [ ] VGA output (not compatible on macOS)

### Special Config:

- Usb port mapping performed
- Applied cosmetics PCI-DEV

See [ioreg](./ioregmac.ioreg) for more clarification

## Credits

- [Apple](https://apple.com) for macOS;
- [Acidanthera](https://github.com/acidanthera) for OpenCore and all the lovely hackintosh work.
- [Dortania](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/icelake.html) For great and detailed guides.
- [Hackintoshlifeit](https://github.com/Hackintoshlifeit)

# If you need help please contact us on [Telegram](https://t.me/HackintoshLife_it) or [Web](https://www.hackintoshlife.it/)
