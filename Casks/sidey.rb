cask "sidey" do
  version "1.3.0"
  sha256 "73347efd7c5fbe35c274125067a45142e4ea459d9d419e438907123ca619d157"

  url "https://github.com/chentao1006/sidey/releases/download/v1.3.0/Sidey.dmg"
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
