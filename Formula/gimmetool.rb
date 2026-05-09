class Gimmetool < Formula
  desc "Multi-repo manager for jumping between projects, pinning favorites, cleaning branches, and aliasing repos"
  homepage "https://creature-workshop.kernelle-soft.com/kernelle-soft/gimmetool"
  version "0.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/gimmetool/releases/download/v0.1.1/gimme-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/gimmetool/releases/download/v0.1.1/gimme-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/gimmetool/releases/download/v0.1.1/gimme-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/gimmetool/releases/download/v0.1.1/gimme-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "gimme"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gimme --version")
  end
end
