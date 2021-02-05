# Hackintosh Dell Ins 7566:
## Result
![Image of installing's result](https://i.imgur.com/uVUK7Wl.png)

## System's Configuration:
* Laptop Dell Ins 7566

| Specifications | Details                                                         |
| -------------- | --------------------------------------------------------------- |
| Laptop Model   | Dell Inspiron 7566                                              |
| Processor      | Intel Core i5-6300hq                         |
| RAM            | 2 X 8GB (SK Hynix DDR3L 1600MHz + Kingston DDR3L 8GB)                                 |
| Storage        | SSD Apacer AS450 2.5 inch 240GB Sata III AP240GAS450B                       |
| Graphics       | Intel HD Graphics 530                                           |
| Display        | LED HD 1366x768 (15.6 inches)                          |
| Network Card   | Network Card: Intel Dual Band Wireless-AC 3165 HMC WiFi Adapter |

* macOS Catatlina 10.15.7
* OpenCore 0.6.5

## Setup
1. Following this steps at [guideline][guideline]
2. Copy folder EFI in this repo and paste in your boot's usb
3. Ok & install now

### Fix some kext:
* Wifi: download the lastest Heliport release at [OpenIntelWireless's Repo][OpenIntelWireless's Repo] & download the lastest [itlwm kext][itlwm]. Using [Proper Tree] to update config.plist file. Install Heliport.dmg and open, then goto **System Preferences -> Users & Groups -> select Current User and add Heliport to Login Items**.
> Check below image to setup
![setup Heliport](https://i.imgur.com/cqNczip.png)

* Scrolling on trackpad & mouse: if you can't setup scrolling direction as windows os (trackpad: natural, mouse: non-natrual). 
Following steps: 
1. Download [Mos][Mos]
2. Setup like following picture
![setup Mos](https://i.imgur.com/XXWptNw.png)

## Fix headphone (Hackintosh combojack support for alc256/alc255)
[https://github.com/hackintosh-stuff/ComboJack]

## Not working
* Nvidia GTX 960M 

P/s: ***If you would like any further information, please don't hesitate to create new issues.***

<!-- Markdown link & img dfn's -->
[guideline]: https://dortania.github.io/OpenCore-Install-Guide/
[OpenIntelWireless's Repo]: https://github.com/OpenIntelWireless/HeliPort/releases
[Mos]: https://mos.caldis.me
[itlwm]: https://github.com/OpenIntelWireless/itlwm/releases
[Proper Tree]: https://github.com/corpnewt/ProperTree

Source: https://github.com/tamht298/Hackintosh-OpenCore-Catalina-Dell-Inspiron-5559
