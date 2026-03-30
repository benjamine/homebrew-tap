class Rethocker < Formula
  desc "Intercept and remap global keys on macOS — with per-app and key-sequence support"
  homepage "https://github.com/benjamine/rethocker"
  license "MIT"
  version "0.1.5"

  on_arm do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-arm64.tar.gz"
    sha256 "637b2d8c3ffc7298d2f45f17124ace0f1fae2c9f191baf3b16b3977a5d5c4528"
  end

  on_intel do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-x64.tar.gz"
    sha256 "cde4df848653afd077cd604214dcfaa47bf6a3ae00d9259b788188550d9ae3f6"
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
