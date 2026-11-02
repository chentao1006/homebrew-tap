cask "browsync" do
  version "1.2.6"
  sha256 "c1529595bd65712bfb9fdaeec092a3595ea59e01c60fec1f74c1352f5dbf6e45"

  url "https://github.com/chentao1006/browsync/releases/download/v1.2.6/BrowSync.dmg"
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
