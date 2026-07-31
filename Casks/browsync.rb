cask "browsync" do
  version "1.1.17"
  sha256 "e309d846e46e8c2e5ae17f1b6cf09f05a0d551dc630b3f1bbb8afce740702ace"

  url "https://github.com/chentao1006/browsync/releases/download/v1.1.17/BrowSync.dmg"
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
