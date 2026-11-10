cask "browsync" do
  version "1.3.2"
  sha256 "9ebb9a30e594452dfc948fba7cf6e9ca1dd08c360596ec345532648b3ae3cdfc"

  url "https://github.com/chentao1006/browsync/releases/download/v1.3.2/BrowSync.dmg"
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
