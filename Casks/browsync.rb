cask "browsync" do
  version "1.0.10"
  sha256 "26ecd59b88210bfa24e5406fca1258dc91ea240765f2d1c1cfe14f54dae8dedb"

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
