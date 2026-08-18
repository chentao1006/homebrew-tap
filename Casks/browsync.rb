cask "browsync" do
  version "1.1.20"
  sha256 "297498804bb7d96d49d93293a53228e44c16c8505cde19f4005d0a90ea899fb9"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.20/BrowSync.dmg"
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
