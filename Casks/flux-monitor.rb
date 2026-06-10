cask "flux-monitor" do
  version "1.3.1"
  sha256 "ad098d572dd3f3aec9601c79892c06e8545967b9c77a87de40a6fa1142f289a5"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.1/FluxMonitor.dmg"
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
