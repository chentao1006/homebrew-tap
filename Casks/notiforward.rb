cask "notiforward" do
  version "1.3.0"
  sha256 "978074f09df1cbd19e4c49b3070ac35d1bf86c3273121a87238887c1364269da"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.3.0/NotiForward.dmg"
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
