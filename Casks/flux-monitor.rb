cask "flux-monitor" do
  version "1.2.21"
  sha256 "0c21046c07bdd69b44fe1d275abed67abc8d642216f1354ea36ed0f55e9182a3"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.2.21/FluxMonitor.dmg"
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
