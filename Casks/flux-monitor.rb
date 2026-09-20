cask "flux-monitor" do
  version "1.3.15"
  sha256 "0f80a38a5a5cd14ed4cd976f8e99a34b3cb1010b96022da4ccb608c482b376ff"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.15/FluxMonitor.dmg"
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
