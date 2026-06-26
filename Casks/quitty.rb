cask "quitty" do
  version "1.1.16"
  sha256 "a798b971d11badcf95f79c2656f158fb10a3fc183a47ccc006913ad3859e492b"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.16/Quitty.dmg"
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
