cask "flux-monitor" do
  version "1.3.17"
  sha256 "8cf296eada328bb4896aefa20ade8d727e8aa348adcc2e2cf285dc19b1f46671"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.17/FluxMonitor.dmg"
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
