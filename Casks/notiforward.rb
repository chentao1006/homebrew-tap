cask "notiforward" do
  version "1.3.1"
  sha256 "b8fa91b6e05e7a13e617473b0ce3659ad3c3aa7e3caee2d848dc63d9b9e6c110"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.3.1/NotiForward.dmg"
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
