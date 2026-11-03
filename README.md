# Infina Homebrew tap

Install [Infina](https://www.infina.so/), voice typing for Mac, with Homebrew:

```sh
brew install --cask infina-ai/tap/infina
```

Or without Homebrew:

```sh
curl -fsSL https://www.infina.so/install.sh | bash
```

Needs a Mac with Apple Silicon (M1 or later) and macOS 13 or newer. Infina updates itself after install, so you don't need `brew upgrade` to stay current.

To remove it:

```sh
brew uninstall --cask infina
```

Add `--zap` to also remove its settings and caches.
