cask "browsync" do
  version "1.1.5"
  sha256 "51668fe44c63b7970d7aefb57073577cf83bdc284b59e43a6ddea68515f277e5"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.5/BrowSync.dmg"
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
