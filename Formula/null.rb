class Null < Formula
  desc "null"
  homepage "null"
  version "0.16.0-dev.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.11/null-0.16.0-dev.11-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.11/null-0.16.0-dev.11-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.11/null-0.16.0-dev.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/insights/releases/download/v0.16.0-dev.11/null-0.16.0-dev.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "null"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/null --version")
  end
end
