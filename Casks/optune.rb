cask "optune" do
  version "0.8.0"
  sha256 "1e4e227810af1e3853610ace654b3aec8f9c17d2f6fc383ba35ae02342236ec5"

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
