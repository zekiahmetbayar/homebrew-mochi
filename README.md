# homebrew-mochi

Homebrew tap for [Mochi](https://github.com/zekiahmetbayar/mochi) — the pixel-art macOS menu-bar companion.

## Install

```bash
brew install --cask zekiahmetbayar/mochi/mochi
```

Or, if you prefer to tap explicitly first:

```bash
brew tap zekiahmetbayar/mochi
brew install --cask mochi
```

Brew downloads the latest DMG from the [Mochi releases](https://github.com/zekiahmetbayar/mochi/releases),
strips the quarantine attribute, and copies `Mochi.app` to `/Applications`. No
Gatekeeper warnings, no manual `xattr` dance.

## Update

```bash
brew upgrade --cask mochi
```

## Uninstall

```bash
brew uninstall --cask mochi
brew untap zekiahmetbayar/mochi
```

## How this tap stays in sync

The cask is auto-bumped by a GitHub Action in the main repo each time a new
release is published. See `scripts/update-tap.sh` and `.github/workflows/release.yml`
in [zekiahmetbayar/mochi](https://github.com/zekiahmetbayar/mochi).
