cask "browsync" do
  version "1.0.7"
  sha256 "e6f831194190fc7fe46714dcccccd0e5a6f0a6781c66f77b4c24f47f061add8a"

  url "https://github.com/chentao1006/browsync/releases/download/v1.0.7/BrowSync.dmg"
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
