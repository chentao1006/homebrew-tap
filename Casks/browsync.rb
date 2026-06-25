cask "browsync" do
  version "1.1.2"
  sha256 "31646aab9e34f0d673744fb37723c39cbfb0c07387fa0ba975227bd55904a8ea"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.2/BrowSync.dmg"
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
