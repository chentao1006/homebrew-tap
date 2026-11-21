cask "browsync" do
  version "1.3.4"
  sha256 "46e8f4a5fc771cafa9e435c8f93d3697f753cb2436ba9bad4e811f51776d8d64"

  url "https://github.com/chentao1006/browsync/releases/download/v1.3.4/BrowSync.dmg"
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
