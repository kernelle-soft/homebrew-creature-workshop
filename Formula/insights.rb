class Insights < Formula
  desc "A drop-in, IDE-agnostic AI knowledge management and retrieval system"
  homepage "https://github.com/kernelle-soft/insights"
  version "0.17.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.3/insights-0.17.3-aarch64-apple-darwin.tar.gz"
      sha256 "cf7205b5fba050828745c49393b0a3eb6f0f7df06f862b64b8fd2f55be4d4423"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.3/insights-0.17.3-x86_64-apple-darwin.tar.gz"
      sha256 "08aca431df3c27141d9b09b13d619334a4a1878a21a39ee6cd8f9eef39053d9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.3/insights-0.17.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ca404ce6115b7d4abb2b3d6286660876625f2b0ea330d15965c4e257f6f3152"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.17.3/insights-0.17.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8306ab5a66882a8afaea656287a3328df58872cb3dcf07bf9c18c8d191ae2e69"
    end
  end

  def install
    bin.install "insights"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insights --version")
  end
end
