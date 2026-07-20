cask "browsync" do
  version "1.1.14"
  sha256 "f761f546f1fc40cb9677804a9b66717c40769c6dc35b450fc58f5c39fcd1aeab"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.14/BrowSync.dmg"
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
