cask "quitty" do
  version "1.1.18"
  sha256 "85cbf0306a1e024b352f09b7651f38a1267fee09867114d2f57553a104391e91"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.18/Quitty.dmg"
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
