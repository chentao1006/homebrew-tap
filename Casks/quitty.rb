cask "quitty" do
  version "1.1.12"
  sha256 "9587c5abac1d83908acac1709e2b8c6d6318a4b45a4ec1cc6104c0bb2c2549a9"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.12/Quitty.dmg"
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
