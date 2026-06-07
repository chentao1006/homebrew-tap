cask "flux-monitor" do
  version "1.3.0"
  sha256 "c4f511ee27a1ac7b38003cfb0f9f7e7c7241fea57798e3843e620b7e551901cb"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.0/FluxMonitor.dmg"
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
