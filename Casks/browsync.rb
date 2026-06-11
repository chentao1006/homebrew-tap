cask "browsync" do
  version "1.0.3"
  sha256 "62cda46fd22a49a410c489c1d27892a70bc3c4d61746c2f9c043d3342f465e69"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.3/BrowSync.dmg"
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
