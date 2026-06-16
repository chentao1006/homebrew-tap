cask "sidey" do
  version "1.2.8"
  sha256 "a0f9a5f62826e1c6eae48260bf3577ee037cf2d3f6f122887d2787aadd12e15a"

  url "https://github.com/chentao1006/sidey/releases/download/v1.2.8/Sidey.dmg"
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
