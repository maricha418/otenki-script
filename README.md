# otenki-script
A minimal Weather script for polybar using wttr.in.

It displays temperature, feels-like temperature, wind speed, precipitation, and moon phase.
Wind speed is converted from km/h to m/s for better readability in Japan.
Designed to be simple, dependency-light, and easy to embed in polybar.

Example output:
`☀️ :+10°C(+8°C) | 💨:↘5.3m/s | ☔:0.0mm | 🌘`

## Requirements

- curl
- awk (POSIX)

## Change Weather Region

Edit `REGION` in the script to change location.

## Example configuration

~/.config/polybar/config.ini

```ini
modules-right = weather <OTHER_MODULE>

[module/weather]
type = custom/script

; Absolute path to the script
exec = /path/to/otenki-script/weather.sh

; Recommended interval: 300–900 seconds.
interval = 600
```

## License

GNU General Public License v3.0
