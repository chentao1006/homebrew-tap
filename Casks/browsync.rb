cask "browsync" do
  version "1.1.0"
  sha256 "932eebe9160bd583ac83d029d4063e5210f1a4804393c7ba2c900b6f85f18046"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.0/BrowSync.dmg"
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
