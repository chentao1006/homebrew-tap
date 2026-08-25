cask "quitty" do
  version "1.1.18"
  sha256 "22a23330b557705480122c95e907ece3d126085f03ea182118b778524434d09c"

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
