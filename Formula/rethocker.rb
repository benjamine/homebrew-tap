class Rethocker < Formula
  desc "Intercept and remap global keys on macOS — with per-app and key-sequence support"
  homepage "https://github.com/benjamine/rethocker"
  license "MIT"
  version "0.1.1"

  on_arm do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-arm64.tar.gz"
    sha256 "ARM64_SHA256_PLACEHOLDER"
  end

  on_intel do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-x64.tar.gz"
    sha256 "X64_SHA256_PLACEHOLDER"
  end

  def install
    bin.install "rethocker"
    bin.install "rethocker-native"
  end

  def caveats
    <<~EOS
      To set up rethocker and start it as a background agent:
        rethocker install

      This will scaffold ~/.config/rethocker/default.ts and register a
      LaunchAgent that starts on login and auto-reloads when you save the file.

      To monitor what keys rethocker can capture:
        rethocker log

      Docs: https://github.com/benjamine/rethocker
    EOS
  end

  test do
    assert_match "Usage: rethocker", shell_output("#{bin}/rethocker --help")
  end
end
