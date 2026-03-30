class Rethocker < Formula
  desc "Intercept and remap global keys on macOS — with per-app and key-sequence support"
  homepage "https://github.com/benjamine/rethocker"
  license "MIT"
  version "0.2.1"

  on_arm do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-arm64.tar.gz"
    sha256 "ba2e1ed276eb845c5c5b8b2b606d032c0c26ca76e735d91c5fb87997fd5c665d"
  end

  on_intel do
    url "https://github.com/benjamine/rethocker/releases/download/v#{version}/rethocker-darwin-x64.tar.gz"
    sha256 "538b7bc21f016cc716b88f5538f07f80325d82db2843585dd59ae0bc9adc595e"
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
