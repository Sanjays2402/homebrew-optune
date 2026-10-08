cask "optune" do
  version "0.9.0"
  sha256 "44db2164135d88ed5038c09405e7447c610eb72cc3bd0bfcf2d2bb16b4522426"

  url "https://github.com/Sanjays2402/optune/releases/download/v#{version}/Optune-#{version}.dmg"
  name "Optune"
  desc "Open-source Logitech HID++ controller for macOS — DPI, SmartShift, wheel, button remap"
  homepage "https://github.com/Sanjays2402/optune"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Optune.app"

  uninstall quit:      "com.sanjays2402.optune",
            launchctl: "com.sanjays2402.optune"

  zap trash: [
    "~/Library/Application Support/Optune",
    "~/Library/Preferences/com.sanjays2402.optune.plist",
    "~/Library/Caches/com.sanjays2402.optune",
    "~/Library/LaunchAgents/com.sanjays2402.optune.plist",
  ]
end
