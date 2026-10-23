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

Uninstall also quits the running app and unloads its background agent; to
wipe Optune's per-device preferences and cached state too:

```sh
brew uninstall --cask --zap optune
```

## Releases

Cask versions track the GitHub release tags on [`Sanjays2402/optune`](https://github.com/Sanjays2402/optune/releases). The cask is auto-bumped by a workflow in the main repo whenever a new release publishes.

## License

The cask itself is unlicensed (it's a Homebrew formula); Optune is **GPL-3.0**.

## Terms & Disclaimer

By using this project you agree to the following.

- **No warranty.** This software is provided "as is", without warranty of any kind, express or implied, including merchantability, fitness for a particular purpose, and non-infringement.
- **No liability.** To the maximum extent permitted by law, the author and contributors are not liable for any claim, loss, or damage (direct, indirect, incidental, or consequential, including lost data or profits) arising from its use.
- **Your responsibility.** You use it at your own risk and are responsible for complying with the laws that apply to you.
- **Third parties.** Names, logos, APIs, and services of others belong to their owners and are used for identification only; no affiliation or endorsement is implied.
- **Your statutory rights.** Nothing here limits rights that cannot be waived by agreement, including under consumer-protection laws in the USA, Canada (including Quebec), and India (Consumer Protection Act, 2019).
- **License.** Use, copying, and distribution are governed by the [LICENSE](LICENSE) file; if anything here conflicts with it, the license controls.
