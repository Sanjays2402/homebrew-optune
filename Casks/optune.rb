cask "optune" do
  version "0.5.1"
  sha256 "b9c33f98480b587ade6078497ef8ab9604a365638e43c6324d3c853387ce6e8b"

  url "https://github.com/Sanjays2402/optune/releases/download/v#{version}/Optune-#{version}.dmg",
      verified: "github.com/Sanjays2402/optune/"
  name "Optune"
  desc "Open-source Logitech HID++ controller for macOS — DPI, SmartShift, wheel, button remap"
  homepage "https://github.com/Sanjays2402/optune"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Optune.app"

  zap trash: [
    "~/Library/Application Support/Optune",
    "~/Library/Preferences/io.github.sanjays2402.optune.plist",
    "~/Library/Caches/io.github.sanjays2402.optune",
    "~/Library/LaunchAgents/io.github.sanjays2402.optune.plist",
  ]
end
