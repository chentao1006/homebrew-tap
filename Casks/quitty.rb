cask "quitty" do
  version "1.1.17"
  sha256 "c86558d2fdd55ac754b17c0e2517ae6ebb9489bcf2073e13d1bfa91eee80c77a"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.17/Quitty.dmg"
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
