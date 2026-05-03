class Insights < Formula
  desc "A drop-in, IDE-agnostic AI knowledge management and retrieval system"
  homepage "https://github.com/kernelle-soft/insights"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0/insights-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "d92b0a1a0492a57d6eceda81d62712220e541b5673aea90682dea43fe7782831"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0/insights-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c5304ac75f19036b4b3adb0da926f9a8f4263f4f26c6cc62c8452edea8396e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0/insights-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5714b1867b99403c9a1724942397d4cd743554bb5ef9480db57f2dd0a44fdb03"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0/insights-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db9ee3423dd74215628c79b392ff213f6418140c10e193f9135bc52f7e053b1d"
    end
  end

  def install
    bin.install "insights"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
