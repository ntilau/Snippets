# Snippets

Copy-paste shell scripts for macOS setup and utilities. Each script is a self-contained, curl-to-bash one-liner.

## Scripts

### Homebrew defaults

Installs Homebrew, adds it to `PATH`, and sets up a standard set of packages.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ntilau/Snippets/HEAD/brew.sh)"
```

Installs: `git`, `gh`, `sevenzip`, `tree`, Google Chrome, ONLYOFFICE, Scroll Reverser, Syncthing, Claude Code.

### Screen mirror

Installs `scrcpy` and `adb`, connects to a Samsung device over the local network, and launches screen mirroring.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ntilau/Snippets/HEAD/mirror.sh)"
```

Requires USB debugging already enabled on the Android device.

### MAC address spoofing

Sets a custom MAC address on a network interface. Requires `sudo`.

```sh
if=en5
mac=cc:96:e5:d8:47:98
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ntilau/Snippets/HEAD/mac.sh)" _ "$if" "$mac"
```

The `_` is a placeholder for `$0` — the script reads the interface and MAC from `$1` and `$2`. Use `en0` for Wi-Fi on modern Macs; check with `networksetup -listallhardwareports` if unsure.

### File exchange

P2P file sharing directly between devices — no upload, no server.

```sh
open https://neardrop.me/
```

### IPTV web player

A self-contained HTML page that plays 227 Italian TV and radio channels using HLS.js. Open in any browser — no server needed.

```sh
curl -O https://raw.githubusercontent.com/ntilau/Snippets/HEAD/index.html
```

Supports touch swipe left/right for channel switching on mobile devices. Channels include national networks (La7, Nove, TV 2000, Real Time, DMAX, etc.), music/radio stations (RTL 102.5, Radio 105 TV, Deejay TV, RDS Social TV, etc.), and regional broadcasters.
