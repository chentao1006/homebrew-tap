cask "browsync" do
  version "1.1.9"
  sha256 "d737ad5a8f4f77dcfd65087119f0ede1474a1ec4c70f9b1178aa6a84253eb2f3"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.9/BrowSync.dmg"
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
