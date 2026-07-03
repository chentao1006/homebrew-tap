cask "flux-monitor" do
  version "1.3.9"
  sha256 "f4ec284a3c1db883bea3ad638f6038daed13d163c08f55bd3cf9a28db91a9eca"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.9/FluxMonitor.dmg"
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
