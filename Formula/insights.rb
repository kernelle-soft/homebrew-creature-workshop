class Insights < Formula
  desc "A drop-in, IDE-agnostic AI knowledge management and retrieval system"
  homepage "https://github.com/kernelle-soft/insights"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.0/insights-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "1930250f248d44f692d64cb2a80bf0371efaee3b92983a95eb3ad25d397e99c7"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.0/insights-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "5c04b87dd3d75014f84422ce13e252fff60a373f894f4702e3b37e3e627bb7f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.0/insights-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e52d84761d795488e448b3b27bf516be6c2c2bf88da3342d37f93f990dcb077b"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.0/insights-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb9e3cb2c9f270d512c68739ccb6a9acd8186cd9532937c375486ec317acc4ec"
    end
  end

  def install
    bin.install "insights"
    bin.install "insights_server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
