cask "flux-monitor" do
  version "1.3.11"
  sha256 "9e28c5b06586f81c5e131b741f2f11808e4ecbf69deb1bec441add6fd6115a61"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.11/FluxMonitor.dmg"
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
