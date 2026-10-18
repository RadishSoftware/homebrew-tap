cask "mobster-app" do
  version "0.4.0"
  sha256 "a1f634cf12c7d3da69ddc383f7cb4643a154fa0575ae5ee15c49478d660f8073"

  url "https://github.com/RadishSoftware/mobster-releases/releases/download/v#{version}/Mobster_#{version}_Apple-Silicon.dmg"
  name "Mobster"
  desc "Let AI agents use a real iPhone over USB"
  homepage "https://mobster.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Mobster.app"

  zap trash: [
    "~/Library/Application Support/app.mobster.desktop",
    "~/Library/Caches/app.mobster.desktop",
    "~/Library/Logs/app.mobster.desktop",
    "~/Library/Preferences/app.mobster.desktop.plist",
    "~/Library/Saved Application State/app.mobster.desktop.savedState",
    "~/Library/WebKit/app.mobster.desktop",
  ]
end
