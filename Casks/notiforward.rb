cask "notiforward" do
  version "1.3.2"
  sha256 "87a83178c0789cf5a73cf54d9047c0ed14b62157f5e86e6be148e44ef41cbcf0"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.3.2/NotiForward.dmg"
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
