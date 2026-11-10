cask "mobster" do
  version "0.3.0"
  sha256 "fe570c6dba93b18d2658722f399b9bac40b67012e64537efbe348b1277434a3b"

  url "https://github.com/RadishSoftware/mobster-releases/releases/download/v#{version}/mobster-macos-arm64.tar.gz"
  name "Mobster CLI"
  desc "Command-line tool for Mobster, now part of the Mobster app"
  homepage "https://mobster.dev/"

  deprecate! date:             "2026-10-13",
             because:          "is now part of Mobster for Mac",
             replacement_cask: "radishsoftware/tap/mobster-app"

  depends_on arch: :arm64
  depends_on macos: :ventura

  binary "mobster-macos-arm64/mobster"

  caveats <<~EOS
    The Mobster CLI is now part of Mobster for Mac.
    To switch with Homebrew, uninstall this cask first:
      brew uninstall --cask mobster
      brew install --cask radishsoftware/tap/mobster-app
    Or download Mobster for Mac at https://mobster.dev/download.
    Your mobster 0.3.0 command keeps working until you uninstall this cask.
  EOS
end
