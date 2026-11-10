cask "browsync" do
  version "1.3.2"
  sha256 "2101cacbcf59b602baf895247f7d60d5e915601cf1e685e718eb8abd86d89f86"

  url "https://github.com/chentao1006/browsync/releases/download/v1.3.2/BrowSync.dmg"
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
