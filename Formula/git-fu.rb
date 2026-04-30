class GitFu < Formula
  desc "Shell scripts extending Git with workflow shortcuts"
  homepage "https://creature-workshop.kernelle-soft.com/kernelle-soft/git-fu"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/git-fu/releases/download/v1.0.1/git-fu-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/git-fu/releases/download/v1.0.1/git-fu-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/git-fu/releases/download/v1.0.1/git-fu-1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://creature-workshop.kernelle-soft.com/kernelle-soft/git-fu/releases/download/v1.0.1/git-fu-1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "git-fu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-fu --version")
  end
end
