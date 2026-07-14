cask "flux-monitor" do
  version "1.3.12"
  sha256 "99a1f925237e853a64b417e9ccb65be9fc62b086d7014e4bbe8361efafff1d4b"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.12/FluxMonitor.dmg"
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
