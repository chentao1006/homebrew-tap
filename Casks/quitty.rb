cask "quitty" do
  version "1.1.11"
  sha256 "0d2a4250a6c9c26c38e07f3b7770b49fc72c0030ccf47c6e420cbbf88aa8bb0d"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.11/Quitty.dmg"
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
