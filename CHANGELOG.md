## [Unreleased]

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