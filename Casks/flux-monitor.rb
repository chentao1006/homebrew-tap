cask "flux-monitor" do
  version "1.3.18"
  sha256 "d922cb34eb028e0545e1b3406fb8b0fd82f02f48c053ff6e6fea38e257ed7dc1"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.18/FluxMonitor.dmg"
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
