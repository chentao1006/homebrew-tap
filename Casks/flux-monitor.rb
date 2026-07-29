cask "flux-monitor" do
  version "1.3.13"
  sha256 "a6c60f10a30e34a20e3dc3878191c439fbe3677aa944c423c86b3895537406a9"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.13/FluxMonitor.dmg"
  name "Flux Monitor"
  desc "Server monitoring and management panel"
  homepage "https://github.com/chentao1006/FluxMonitor"

  depends_on macos: :monterey

  app "Flux Monitor.app"

  zap trash: [
    "~/Library/Application Support/Flux Monitor",
    "~/Library/Caches/com.ct106.flux-monitor",
    "~/Library/HTTPStorages/com.ct106.flux-monitor",
    "~/Library/Preferences/com.ct106.flux-monitor.plist",
    "~/Library/Saved Application State/com.ct106.flux-monitor.savedState",
  ]
end
