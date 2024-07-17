<div align="center">
    <h1>Espressif Windows USB drivers</h1>
</div>

**Welcome to the ESP-win-usb-drivers!**

This repository contains Windows USB drivers for Espressif's boards.

---

- [Documentation](#documentation)
    - [Installing the driver](#installing-the-driver)
    - [Adding driver](#adding-driver)
- [CHANGELOG](#changelog)
- [License](#license)
- [Contributing](#contributing)

---

## Documentation

### Installing the driver
* Download the driver archive from the [releases section](https://github.com/espressif/esp-win-usb-drivers/releases)
* Extract the files
* Right-click the `.inf` file and install the driver

> [!NOTE] 
> For more info, please see https://learn.microsoft.com/en-us/windows-hardware/drivers/ifs/using-an-inf-file-to-install-a-file-system-filter-driver#right-click-install

### Adding driver
1. In the `drivers/` directory create a new one corresponding to the driver
2. Create a PR
3. Run the workflow `Sign Windows drivers` which will sign the driver and create a draft release, all the parameters must be provided
    - Parameters of the workflow:
        - Windows driver version
            - A version of the driver (`[Version]` specified in the INF file)
        - Driver directory in drivers/
            - Actual directory name from point 1.
        - Driver catalog file
            - Full catalog name of the driver (with filename extension `.cat`)
        - Driver display name
            - Custom driver name which will be displayed in the `Releases` or `Tags`
4. Test the driver and proceed with actions to get PR merged
5. Change the draft release to release

---

## CHANGELOG
In this document, the main changes for this project will be documented.
- The [`CHANGELOG.md`](CHANGELOG.md) file.

## License

> [!CAUTION]
> Every source code has it's own LICENSE, especially when it is owned by third parties and are licensed under their own licenses, for more information please see all the accompanying README and LICENSE files for the specific driver.


## Contributing

📘 If you are interested in contributing to this project, see the [project Contributing Guide](CONTRIBUTING.md).
