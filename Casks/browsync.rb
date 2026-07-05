cask "browsync" do
  version "1.1.7"
  sha256 "3605c0f93d405f13e7f0ed68f28a875de15d754968e36dfda056eef6fdd6d51c"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.7/BrowSync.dmg"
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
