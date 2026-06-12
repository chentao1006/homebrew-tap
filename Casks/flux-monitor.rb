cask "flux-monitor" do
  version "1.3.4"
  sha256 "351a019953960d68422002ee6b75eff2ff31799fccaa410a5b31ffa07d85f229"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.4/FluxMonitor.dmg"
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
