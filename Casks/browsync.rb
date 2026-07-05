cask "browsync" do
  version "1.1.6"
  sha256 "769d0bc4579d5896024d738ce84b3abe85829ed521f2ed1e83570d471a14ce28"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.6/BrowSync.dmg"
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
