cask "notiforward" do
  version "1.1.0"
  sha256 "d3b4b5ece9f73a18bacc98f318445085a37c8e9a5c511b5a8796a366101db4e9"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.1.0/NotiForward.dmg"
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
