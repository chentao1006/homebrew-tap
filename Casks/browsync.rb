cask "browsync" do
  version "1.3.0"
  sha256 "66271bc50bd4b2abe6b98aca65d3ff0a0c3f6624b00ced7bb20bd927822b80d5"

  url "https://github.com/chentao1006/browsync/releases/download/v1.3.0/BrowSync.dmg"
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
