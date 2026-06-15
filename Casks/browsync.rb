cask "browsync" do
  version "1.0.10"
  sha256 "d59b6177912d6fbed8afd35278d06b98e1a574121e2a9517c0117f37df59eb3a"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.10/BrowSync.dmg"
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
