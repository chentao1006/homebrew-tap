# Homebrew Tap for Flux Monitor

Install Flux Monitor:

```sh
brew install --cask chentao1006/tap/flux-monitor
```

Or tap the repository first:

```sh
brew tap chentao1006/tap
brew install --cask flux-monitor
```

## Updating the cask

1. Create a new Flux Monitor GitHub Release with `FluxMonitor.dmg`.
2. Update `version` and `sha256` in `Casks/flux-monitor.rb`.
3. Test locally:

```sh
brew audit --cask --new Casks/flux-monitor.rb
brew install --cask --build-from-source Casks/flux-monitor.rb
```
