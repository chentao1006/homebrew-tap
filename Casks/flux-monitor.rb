cask "flux-monitor" do
  version "1.2.17"
  sha256 "685b65cf873e5b774debdf8040b147e1e4906c9fb6a3683dda43abda8f50e1a2"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.2.17/FluxMonitor.dmg"
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
