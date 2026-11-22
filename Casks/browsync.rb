cask "browsync" do
  version "1.3.5"
  sha256 "4b8ff16e412a19c988cbfc0e19bbbd4f53e5f19d990a3fe3c1a97484c483751d"

  url "https://github.com/chentao1006/browsync/releases/download/v1.3.5/BrowSync.dmg"
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
