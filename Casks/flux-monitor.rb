cask "flux-monitor" do
  version "1.2.16"
  sha256 "4dd7cccee890c5b49de409e28438be6c1ec742f1148793307ce2ae9c5285dae4"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.2.16/FluxMonitor.dmg"
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
