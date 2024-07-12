<div align="center">
    <h1>Espressif Windows USB drivers</h1>
</div>

**Welcome to the ESP-win-usb-drivers!**

This repository contains Windows USB drivers for Espressif's boards.

---

- [Documentation](#documentation)
    - [Adding driver](#adding-driver)
- [CHANGELOG](#changelog)
- [License](#license)
- [Contributing](#contributing)

---

## Documentation

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

This document and the attached source code are released as Free Software under Apache License Version 2 or later. See the accompanying [LICENSE](LICENSE) file for a copy.


## Contributing

📘 If you are interested in contributing to this project, see the [project Contributing Guide](CONTRIBUTING.md).
