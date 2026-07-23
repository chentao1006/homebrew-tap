cask "sidey" do
  version "1.2.9"
  sha256 "d46163e0d054addbb721f025a4f59ec7f4b75fdf7abfb389216972a1fe248a60"

  url "https://github.com/chentao1006/sidey/releases/download/v1.2.9/Sidey.dmg"
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
