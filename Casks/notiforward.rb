cask "notiforward" do
  version "1.1.1"
  sha256 "2edc03accf39147ed8bfd0da249bd31230d964a663c659d8365c8fa95034dc9b"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.1.1/NotiForward.dmg"
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
