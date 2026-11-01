cask "notiforward" do
  version "1.3.4"
  sha256 "2db4f9bef6d2a7b597d6e523dccc44628f8e29c85e7cff264e42e2ccd1df87e5"

  url "https://github.com/chentao1006/NotiForward/releases/download/v1.3.4/NotiForward.dmg"
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
