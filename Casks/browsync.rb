cask "browsync" do
  version "1.3.5"
  sha256 "73a7b649838a968f5ed75dfd324654d1b1a4e7f097f16db15a6b34ac086ca30a"

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
