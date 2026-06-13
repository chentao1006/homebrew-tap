cask "flux-monitor" do
  version "1.3.5"
  sha256 "8b9e493b25096279f7095255c8714ad65ef8dc7b03b3ac0457c1aa4c240dbf8c"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.5/FluxMonitor.dmg"
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
