cask "flux-monitor" do
  version "1.2.22"
  sha256 "719040a5f48cdaa9dd5d92c11073c5d8b50a1c2150aaebd88339ed3ae18f16e1"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.2.22/FluxMonitor.dmg"
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
