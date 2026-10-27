cask "notiforward" do
  version "1.3.3"
  sha256 "1a167a2e123ffc574770b8da724cfc909dcf79bce2cde73ad7c40999368eb40b"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.3.3/NotiForward.dmg"
  name "NotiForward"
  desc "Forward selected notifications to your iPhone through Bark"
  homepage "https://notiforward.ct106.com/"

  depends_on macos: :monterey

  app "NotiForward.app"

  uninstall quit: "com.ct106.notiforward"

  zap trash: [
    "~/Library/Application Support/NotiForward",
    "~/Library/Containers/com.ct106.notiforward",
  ]
end
