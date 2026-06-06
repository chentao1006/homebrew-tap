cask "sidey" do
  version "1.2.5"
  sha256 "151d8e070b6e09376304049b902f04d26f69d76d27e365236f8e2c572bfe90db"

  url "https://github.com/chentao1006/sidey/releases/download/v1.2.5/Sidey.dmg"
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
