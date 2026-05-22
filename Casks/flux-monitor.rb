cask "flux-monitor" do
  version "1.2.18"
  sha256 "8eabc8bc41fe3875f5df858b9d240a884fadd423761647e78c725a917621962e"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.2.18/FluxMonitor.dmg"
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
