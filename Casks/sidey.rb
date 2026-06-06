cask "sidey" do
  version "1.2.4"
  sha256 "81232ae814ccd7fcc6bb18bed1d64547ce115636e59f3481456b66491c85b8c0"

  url "https://github.com/chentao1006/sidey/releases/download/v1.2.4/Sidey.dmg"
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
