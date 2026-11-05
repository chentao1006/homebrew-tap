cask "browsync" do
  version "1.3.1"
  sha256 "69e80b341f7986c98761cc20150c37e7a62188e1ebece83559620a73dc31de0d"

  url "https://github.com/chentao1006/browsync/releases/download/v1.3.1/BrowSync.dmg"
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
