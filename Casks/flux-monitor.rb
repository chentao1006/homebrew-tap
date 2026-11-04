cask "flux-monitor" do
  version "1.4.8"
  sha256 "ecaf502178f2d932e7c8f173cfec006b47764e7b93955c5eb4520e1a93b11dbf"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.4.8/FluxMonitor.dmg"
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
