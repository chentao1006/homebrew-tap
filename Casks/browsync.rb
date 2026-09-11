cask "browsync" do
  version "1.2.1"
  sha256 "d732360d525380ace51828fc3a12bd189488c6ea4bb6f9ac379ba293ae84e9c9"

  url "https://github.com/chentao1006/browsync/releases/download/v1.2.1/BrowSync.dmg"
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
