cask "browsync" do
  version "1.1.15"
  sha256 "99eed08ddbc78a364cf76aac5d070406fd7133f652ecb8028cd9aeace19ba11d"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.15/BrowSync.dmg"
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
