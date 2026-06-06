cask "sidey" do
  version "1.2.7"
  sha256 "854748c0c2cffcf7177e1731fca400dd1dd525f66d0bfbd8ca7d63f37b3e2c30"

  url "https://github.com/chentao1006/sidey/releases/download/v1.2.7/Sidey.dmg"
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
