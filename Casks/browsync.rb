cask "browsync" do
  version "1.0.10"
  sha256 "61bf0f9f139a0c7fd947fe1f779a70affe8a37bea50857adcb75f03cc0037c23"

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
