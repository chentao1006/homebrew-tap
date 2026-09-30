cask "browsync" do
  version "1.2.2"
  sha256 "659d3e0799ece9df41d6a446eafb3367f1bfe02e1ebd7eecafa93f2d2a663be1"

  url "https://github.com/chentao1006/browsync/releases/download/v1.2.2/BrowSync.dmg"
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
