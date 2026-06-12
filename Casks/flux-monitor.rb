cask "flux-monitor" do
  version "1.3.3"
  sha256 "9bf451c83893b53592dc416098f9cc08ccf6e10b0b91568799c2ceb7565eec09"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.3/FluxMonitor.dmg"
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
