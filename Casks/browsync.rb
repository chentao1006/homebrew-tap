cask "browsync" do
  version "1.0.10"
  sha256 "aed18a7174d35475564592c31dc2c0d5fc7d7d5e3a087a97a9014ac1504a67af"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.10/BrowSync.dmg"
  name "BrowSync"
  desc "Unified browsing experience across multiple browsers"
  homepage "https://github.com/chentao1006/browsync"

  depends_on macos: :sonoma

  app "BrowSync.app"

  zap trash: [
    "~/Library/Application Support/BrowSync",
    "~/Library/Caches/com.ct106.browsync",
    "~/Library/HTTPStorages/com.ct106.browsync",
    "~/Library/Preferences/com.ct106.browsync.plist",
    "~/Library/Saved Application State/com.ct106.browsync.savedState",
  ]
end
