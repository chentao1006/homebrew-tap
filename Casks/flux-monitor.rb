cask "flux-monitor" do
  version "1.3.14"
  sha256 "59f8efeac23daaf2650e7f86973799d01f7dd81abdbe96ad8f69a480a9ab0b28"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.14/FluxMonitor.dmg"
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
