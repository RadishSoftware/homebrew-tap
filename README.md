# Homebrew tap for Mobster

```sh
brew install --cask radishsoftware/tap/mobster-app
```

`mobster-app` is [Mobster for Mac](https://mobster.dev): it lets AI use a real iPhone over USB, or an iOS simulator, from an Apple silicon Mac. The cask installs the signed, notarized `Mobster.app` from [the releases](https://github.com/RadishSoftware/mobster-releases/releases), and the app updates itself. Your coding agent gets Mobster's MCP server from the app: Settings › Connectors › Use Mobster from… › **Add**.

The `mobster` cask is the Mobster CLI 0.3.0. The CLI is now part of Mobster for Mac, so that cask is deprecated and points to `mobster-app`. A `mobster` you installed with it keeps working.

Docs are at [docs.mobster.dev](https://docs.mobster.dev). Get help at [mobster.dev/support](https://mobster.dev/support).
