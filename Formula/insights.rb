class Insights < Formula
  desc "A drop-in, IDE-agnostic AI knowledge management and retrieval system"
  homepage "https://github.com/kernelle-soft/insights"
  version "0.16.0-dev.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.12/insights-0.16.0-dev.12-aarch64-apple-darwin.tar.gz"
      sha256 "e9d57f6160c46e0a127d979dc44c4ed7c981f45ab54ba36ca1db0695c2db56d3"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.12/insights-0.16.0-dev.12-x86_64-apple-darwin.tar.gz"
      sha256 "9d112a9b8d357971097d6fbbd01126f00c037fd248558769df70db0876c02453"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.12/insights-0.16.0-dev.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3767cdce3572694705884038d0663394d9216a79aad9f862fd249af1917d21a2"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.12/insights-0.16.0-dev.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9aea1b324854f103cc6cb9b1f9e17a92dde9c7820bc279df4e4b3c0a49ea10b9"
    end
  end

  def install
    bin.install "insights"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
