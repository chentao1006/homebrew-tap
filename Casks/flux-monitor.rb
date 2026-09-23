cask "flux-monitor" do
  version "1.3.16"
  sha256 "1fd391c6af4099272c40f4062bdd8425e03a2a50606e82c2bef837aa5c216ea4"

  url "https://github.com/chentao1006/FluxMonitor/releases/download/v1.3.16/FluxMonitor.dmg"
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
