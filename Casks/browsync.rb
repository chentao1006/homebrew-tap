cask "browsync" do
  version "1.0.5"
  sha256 "7276ba1bceeeb23d445fcf522277a986fb798d4741b3a284e2563dd8c5c9e652"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.5/BrowSync.dmg"
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
