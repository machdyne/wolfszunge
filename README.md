# Wolfszunge Radio

This repo contains instructions and a 3D-printable case for building and configuring a Wolfszunge radio.

Find more information on the [Wolfszunge product page](https://machdyne.com/product/wolfszunge-radio-kit/).

## Configuring Meshtastic

- Connect Wolfszunge to the USB on a computer.
- Visit [client.meshtastic.org](https://client.meshtastic.org/).
- New connection -> Serial -> # 0
- Config -> LoRa -> Region -> Set your region.
- Press the save button (top right).

## Reinstalling Meshtastic Firmware

Wolfszunge comes with Meshtastic pre-installed, you can upgrade or reinstall the firmware by following these instructions:

- Remove the Wolfszunge lid.
- Hold the PROG button while plugging in the board.
- Visit [flasher.meshtastic.org](https://flasher.meshtastic.org/).
- Select "Heltec V3" device.
- Use the default Beta firmware.
- Press Flash -> Continue -> Update.
- Select CP2102.

## License

The contents of this repo are released under the [Lone Dynamics Open License](LICENSE.md).

Note: You can use these designs for commercial purposes but we ask that instead of producing exact clones, that you either replace our trademarks and logos with your own or add your own next to ours.
