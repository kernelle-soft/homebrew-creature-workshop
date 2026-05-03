class Insights < Formula
  desc "A drop-in, IDE-agnostic AI knowledge management and retrieval system"
  homepage "https://github.com/kernelle-soft/insights"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.1/insights-0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "5b7379e12ec1368cfe55dd15c5be020be882c7537b5252ac644afd96f9ea4c77"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.1/insights-0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "c3e52b7956bf5706fd5be352a0b04c05a3b8112edbbacc5276b5af6cbe7bbd80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.1/insights-0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02480784b1f0324377f7d6d2c3df244e0b769dfc5bc62da8a3e88a4b035e2ee5"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.1/insights-0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fee26485b180b38b7f28047de80206310166c1b31751253c6db6cea42e1ef543"
    end
  end

  def install
    bin.install "insights"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
