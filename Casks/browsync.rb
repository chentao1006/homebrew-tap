cask "browsync" do
  version "1.1.23"
  sha256 "159ca7aa3b60646dc72d426ad43647e6ce23c7ed67f27796325c40123ed421f8"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.23/BrowSync.dmg"
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
