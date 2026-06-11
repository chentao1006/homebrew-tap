cask "browsync" do
  version "1.0.0"
  sha256 "41917ce18e6bcd7cb16247849f7ce8c3666729612def2e0e4f34779441c7261a"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.0/BrowSync.dmg"
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
