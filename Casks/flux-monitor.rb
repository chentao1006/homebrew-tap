cask "flux-monitor" do
  version "1.4.0"
  sha256 "cda8b4b42134fc2c444a8d1465ebe42bc63a91b737029dd94476a838a2a175b1"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.4.0/FluxMonitor.dmg"
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
