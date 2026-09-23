cask "flux-monitor" do
  version "1.3.16"
  sha256 "8f96915b9a59156c6d76a8c352f66d9e70d0f7d3ebbb437a7752ab12dcfb052e"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.16/FluxMonitor.dmg"
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
