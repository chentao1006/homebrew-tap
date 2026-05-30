cask "quitty" do
  version "1.1.14"
  sha256 "56ee1624e0755ec83b79fe5211a8c997afda50d6e834adbceeb9fbbdccf503ae"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.14/Quitty.dmg"
  name "Quitty"
  desc "Quit apps automatically when their last window is closed"
  homepage "https://github.com/chentao1006/quitty"

  depends_on macos: :big_sur

  app "Quitty.app"

  zap trash: [
    "~/Library/Application Support/Quitty",
    "~/Library/Caches/com.ct106.quitty",
    "~/Library/HTTPStorages/com.ct106.quitty",
    "~/Library/Preferences/com.ct106.quitty.plist",
    "~/Library/Saved Application State/com.ct106.quitty.savedState",
  ]
end
