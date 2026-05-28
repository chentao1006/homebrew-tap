cask "quitty" do
  version "1.1.13"
  sha256 "edb3d462e3e2be82a35b44253965fefc2304b030caf72720a87de972442d3387"

  url "https://github.com/chentao1006/quitty/releases/download/v1.1.13/Quitty.dmg"
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
