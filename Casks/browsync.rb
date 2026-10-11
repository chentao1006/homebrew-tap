cask "browsync" do
  version "1.2.3"
  sha256 "e77b16d18d09b8214b8d56cf461122668cc65d6d1ec229ca58b99293a7e5b3a5"

  url "https://github.com/chentao1006/browsync/releases/download/v1.2.3/BrowSync.dmg"
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
