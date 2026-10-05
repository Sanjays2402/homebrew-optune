cask "optune" do
  version "0.7.0"
  sha256 "8e1e97a45d883884d130b6ed10d968b45b2d92dba2cbc8a66bee5f3edc3ce31b"

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
