cask "quitty" do
  version "1.1.20"
  sha256 "38751ed9c411377de725894611c4b39202486d340133bd8a7e0b5118097fd52c"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.20/Quitty.dmg"
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
