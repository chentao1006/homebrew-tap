cask "browsync" do
  version "1.0.11"
  sha256 "5f83a79fd4acd1d2f23fcab9b0fb7c7fd709b0afd8ae9c8a6627d575670434a5"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.11/BrowSync.dmg"
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
