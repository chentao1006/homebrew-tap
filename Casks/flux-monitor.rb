cask "flux-monitor" do
  version "1.2.20"
  sha256 "653282904e9f30cabb76d8605b9f72aad9c69beae67fad6bebdcb06fe2ce3b3b"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.2.20/FluxMonitor.dmg"
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
