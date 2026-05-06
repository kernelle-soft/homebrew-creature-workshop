class Insights < Formula
  desc "A drop-in, IDE-agnostic AI knowledge management and retrieval system"
  homepage "https://github.com/kernelle-soft/insights"
  version "0.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.2/insights-0.17.2-aarch64-apple-darwin.tar.gz"
      sha256 "fa520a02af409373c3b99e1248f92b39f16c8857b970fc1fc2840051a3a465a2"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.2/insights-0.17.2-x86_64-apple-darwin.tar.gz"
      sha256 "f68935e1f113bc4b08661809a3ff5291d2d1074f67903279faa2af66396f38b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.2/insights-0.17.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bf529dafd0f252e1e824789a56dfa9c977e592f3c0344174f9162e1bb2e9d7d"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.2/insights-0.17.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "024adb5c07447fa249626e8fcdb7d5d62dbd9e44094963307408691c046c3021"
    end
  end

  def install
    bin.install "insights"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
