cask "browsync" do
  version "1.1.19"
  sha256 "3f76d8b64b2f4da09fc03954a381bb68ad828f496e436bca090727a3bee04a6a"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.19/BrowSync.dmg"
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
