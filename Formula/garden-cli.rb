class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.34"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.34/garden-0.13.34-macos-arm64.tar.gz"
    sha256 "e6a20f7e6b2ccd47bf958f3ea8e38617bd5895fa94c606838e1534b13479c594"
  else
    url "https://download.garden.io/core/0.13.34/garden-0.13.34-macos-amd64.tar.gz"
    sha256 "99015b5d26c63bfa25c81bf2445bcc161d76db440ebbaef7d33f946f195611bb"
  end

  def install
    libexec.install "garden"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
