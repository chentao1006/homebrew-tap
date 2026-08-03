cask "sidey" do
  version "1.3.1"
  sha256 "16f93ec5d006e94b318fbbeaeb0c50cc436c9fcf876cbca763806c0efd8b3d7e"

  url "https://github.com/chentao1006/sidey/releases/download/v1.3.1/Sidey.dmg"
  name "Sidey"
  desc "Context-aware AI assistant"
  homepage "https://github.com/chentao1006/sidey"

  depends_on macos: :big_sur

  app "Sidey.app"

  zap trash: [
    "~/Library/Application Support/Sidey",
    "~/Library/Caches/com.ct106.sidey",
    "~/Library/HTTPStorages/com.ct106.sidey",
    "~/Library/Preferences/com.ct106.sidey.plist",
    "~/Library/Saved Application State/com.ct106.sidey.savedState",
  ]
end
