cask "quitty" do
  version "1.1.10"
  sha256 "f7f6f3f03a72d65645be46d0d4b53e2474fab95a790e58fabc97f6aee0e63576"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.10/Quitty.dmg"
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
