class Insights < Formula
  desc "Knowledge management and insight storage system"
  homepage "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights"
  version "0.14.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.14.9/insights-0.14.9-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.14.9/insights-0.14.9-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.14.9/insights-0.14.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.14.9/insights-0.14.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "insights"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
