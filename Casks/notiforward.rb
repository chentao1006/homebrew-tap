cask "notiforward" do
  version "1.0.0"
  sha256 "239960a8dfc3e02abfeaeb7ef9f1335ed57d4f751463182914c7a007f1bdc520"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.0.0/NotiForward.dmg"
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
