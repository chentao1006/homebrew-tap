cask "flux-monitor" do
  version "1.4.1"
  sha256 "4ba06cda18ec884b9d98ebe720422fc6c4e8bab33181e49af2f9a822ba41daae"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.4.1/FluxMonitor.dmg"
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
