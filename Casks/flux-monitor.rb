cask "flux-monitor" do
  version "1.2.20"
  sha256 "493bb15fb84f2387ff748395f271e681e4c3f38d21cfdb1e5cc6955a67f3ddab"

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
