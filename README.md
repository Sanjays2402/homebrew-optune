# homebrew-optune

Homebrew tap for [**Optune**](https://github.com/Sanjays2402/optune) — an open-source Logitech HID++ controller for macOS.

## Install

```sh
brew tap sanjays2402/optune
brew install --cask optune
```

Then launch from Spotlight or `/Applications/Optune.app`. On first run, macOS will prompt for **Input Monitoring** permission (so the app can talk to your mouse over HID++) and, when you bind a keystroke remap, **Accessibility** permission.

## Update

```sh
brew update
brew upgrade --cask optune
```

## Uninstall

```sh
brew uninstall --cask optune
brew untap sanjays2402/optune
```

To also wipe Optune's per-device preferences and cached state:

```sh
brew uninstall --cask --zap optune
```

## Releases

Cask versions track the GitHub release tags on [`Sanjays2402/optune`](https://github.com/Sanjays2402/optune/releases). The cask is auto-bumped by a workflow in the main repo whenever a new release publishes.

## License

The cask itself is unlicensed (it's a Homebrew formula); Optune is **GPL-3.0**.
