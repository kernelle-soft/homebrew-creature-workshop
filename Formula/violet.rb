class Violet < Formula
  desc "Information-theoretic code legibility evaluation tool"
  homepage "https://creature-workshop.kernelle-soft.com/kernelle-soft/violet"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/violet/releases/download/v0.0.6/violet-0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/violet/releases/download/v0.0.6/violet-0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/violet/releases/download/v0.0.6/violet-0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/violet/releases/download/v0.0.6/violet-0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "violet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/violet --version")
  end
end
