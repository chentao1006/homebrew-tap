cask "browsync" do
  version "1.1.12"
  sha256 "dff608ca9c3eefd247a33057b0728a945a4950ee769b3630e4e348fbe56fb5c2"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.12/BrowSync.dmg"
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
