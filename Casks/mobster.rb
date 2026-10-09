cask "mobster" do
  version "0.3.0"
  sha256 "fe570c6dba93b18d2658722f399b9bac40b67012e64537efbe348b1277434a3b"

  url "https://github.com/RadishSoftware/mobster/releases/download/v#{version}/mobster-macos-arm64.tar.gz"
  name "Mobster"
  desc "Let AI agents use a real iPhone over USB"
  homepage "https://mobster.dev/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  binary "mobster-macos-arm64/mobster"

  caveats <<~EOS
    Save your Claude or OpenAI key: mobster login
    Check your iPhone: mobster doctor
    A simulator for testing: mobster sim doctor
  EOS
end
