cask "flux-monitor" do
  version "1.4.4"
  sha256 "6ee25c54e55a019ce9efbee7c179bf1eb0851d043d2f9e3b11fee1d632d27d10"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.4.4/FluxMonitor.dmg"
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
