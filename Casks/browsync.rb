cask "browsync" do
  version "1.1.1"
  sha256 "994a30fc03a29ce98804850cc5fb7ddeeb61e35fd03a90c242885eef56dc783e"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.1/BrowSync.dmg"
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
