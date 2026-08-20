## [Unreleased]

## 08/20/2026
- Added Windows ARM64 (`NTarm64`) to all WinUSB driver packages so they can install on Copilot+ / Windows 11 ARM64 PCs
    - USB JTAG coinstallers remain x86/amd64/arm-only; ARM64 uses inbox WinUSB

## 07/08/2024
- Added ESP32-S2 driver (WinUSB driver for the right interface)
    - Interface 2 had no driver installed, WinUSB is installed for this interface

## 07/01/2024
- Added ESP-WROVER-KIT driver (WinUSB driver for the right interface)
    - For Interface 0 the FTDI driver was used, this needs to be switched with the WinUSB driver
    - solving [LIBUSB_ERROR_NOT_FOUND](https://github.com/espressif/idf-installer/issues/204) issue

- Added ESP32-S2-KALUGA driver (WinUSB driver for the right interface)
    - For Interface 0 the FTDI driver was used, this needs to be switched with the WinUSB driver
    - solving [LIBUSB_ERROR_NOT_FOUND](https://github.com/espressif/idf-installer/issues/204) issue


[unreleased]: https://github.com/espressif/esp-win-usb-drivers/compare/master...HEAD