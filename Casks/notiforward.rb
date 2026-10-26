cask "notiforward" do
  version "1.2.0"
  sha256 "bba344fd7b8002408d6a48d9a3370266686b4e4fbc06a1fee49aef3ce97b452e"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.2.0/NotiForward.dmg"
  name "NotiForward"
  desc "Forward selected notifications to your iPhone through Bark"
  homepage "https://notiforward.ct106.com/"

  depends_on macos: :sequoia

  app "NotiForward.app"

  uninstall quit: "com.ct106.notiforward"

  zap trash: [
    "~/Library/Application Support/NotiForward",
    "~/Library/Containers/com.ct106.notiforward",
  ]
end
