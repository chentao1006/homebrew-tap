cask "quitty" do
  version "1.1.21"
  sha256 "d1336f1a3522731bc310473838d3e8063010a4631554793874b11fc86601ecc6"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.21/Quitty.dmg"
  name "Quitty"
  desc "Quit apps automatically when their last window is closed"
  homepage "https://github.com/chentao1006/quitty"

  depends_on macos: :monterey

  app "Quitty.app"

  zap trash: [
    "~/Library/Application Support/Quitty",
    "~/Library/Caches/com.ct106.quitty",
    "~/Library/HTTPStorages/com.ct106.quitty",
    "~/Library/Preferences/com.ct106.quitty.plist",
    "~/Library/Saved Application State/com.ct106.quitty.savedState",
  ]
end
