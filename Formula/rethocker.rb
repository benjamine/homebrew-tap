class Rethocker < Formula
  desc "Intercept and remap global keys on macOS — with per-app and key-sequence support"
  homepage "https://github.com/benjamine/rethocker"
  license "MIT"
  version "0.2.2"

  on_arm do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-arm64.tar.gz"
    sha256 "fd751fa3e6b34e6d600103d675753d29a139bc354bbf58e1455f5aa7e3b1a353"
  end

  on_intel do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-x64.tar.gz"
    sha256 "7ad482e7c5fc5c2d390c5f7773aa96a345e3d05360e3c378e1b7f8a19a6d8b3e"
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
