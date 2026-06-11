cask "flux-monitor" do
  version "1.3.2"
  sha256 "a4e8c897d16ac09bcd17c178470ab75a5fe2b41db8c0d4b62edfdb3ea77d1ea8"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.2/FluxMonitor.dmg"
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
