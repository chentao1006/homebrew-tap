cask "quitty" do
  version "1.1.19"
  sha256 "539e7be79862f252d081372de9b89f69e4eb102f0add082626cc1a242cb4a6df"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.19/Quitty.dmg"
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
