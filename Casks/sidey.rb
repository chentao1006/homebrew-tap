cask "sidey" do
  version "1.2.6"
  sha256 "2d18b3547852f38ed17b69736bb3a78121c3936cdd6a7bbf5e02c93cc3a81593"

  url "https://github.com/chentao1006/sidey/releases/download/v1.2.6/Sidey.dmg"
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
