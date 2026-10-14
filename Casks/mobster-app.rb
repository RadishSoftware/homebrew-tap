cask "mobster-app" do
  version "0.3.0"
  sha256 "1b90505f28ece3b89d038720687bad8bf07e507c1eea94e5228615a4ae6e4b3c"

  url "https://github.com/RadishSoftware/mobster-releases/releases/download/v#{version}/Mobster_#{version}_Apple-Silicon.dmg"
  name "Mobster"
  desc "Let AI agents use a real iPhone over USB"
  homepage "https://mobster.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Before launch (14 Oct 2026) the cask installs nothing and says so. Launch day: delete this line.
  disable! date: "2026-10-13", because: "is coming soon: mobster.dev"

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
