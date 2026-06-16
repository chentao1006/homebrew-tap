cask "quitty" do
  version "1.1.15"
  sha256 "a2000fc6852e8daa1a4b07876a96c5c3291c8a7a9ff96fcc150f7131058f24bc"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.15/Quitty.dmg"
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
