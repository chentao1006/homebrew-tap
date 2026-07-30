cask "sidey" do
  version "1.3.0"
  sha256 "61a987afc30c964248fd3c7ed519be770d5506c58bff9b1fa0613184abe47119"

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
