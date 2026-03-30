class Rethocker < Formula
  desc "Intercept and remap global keys on macOS — with per-app and key-sequence support"
  homepage "https://github.com/benjamine/rethocker"
  license "MIT"
  version "0.2.0"

  on_arm do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-arm64.tar.gz"
    sha256 "317091f49a1df5da869c14c299e6e25849e43e544a3c1be5e4d36bab018bea58"
  end

  on_intel do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-x64.tar.gz"
    sha256 "dea7517526567f9cfc4e6af6f158b45631d859f9d049eb53b5dccf31da7dc7c9"
  end

  def install
    bin.install "rethocker"
    bin.install "rethocker-native"
  end

  def caveats
    <<~EOS
      Get started:
        rethocker install

      This scaffolds ~/.config/rethocker/default.ts and registers a LaunchAgent
      that starts on login and auto-reloads when you save the file.

      Monitor what keys rethocker can capture:
        rethocker log

      To uninstall the background agent (before brew uninstall):
        rethocker uninstall

      Docs: https://github.com/benjamine/rethocker
    EOS
  end

  test do
    assert_match "Usage: rethocker", shell_output("#{bin}/rethocker --help")
  end
end
