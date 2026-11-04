cask "flux-monitor" do
  version "1.4.7"
  sha256 "25df84b4e2539fe4d0e3aa72dfa6e598a15de4b6878863e5b92504fd66cd6692"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.4.7/FluxMonitor.dmg"
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
