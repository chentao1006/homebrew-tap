cask "sidey" do
  version "1.2.4"
  sha256 "dbcff07f1dad68b5f0457c3d909be97f5e46b8f5a15f20bd3a6fd746fac3bf4e"

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
