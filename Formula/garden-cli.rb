class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.50"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.50/garden-0.13.50-macos-arm64.tar.gz"
    sha256 "e5f86d92e42a3fe2173681a1a58b922e9c97549c0ba8c1a067fc78dac84ea06e"
  else
    url "https://download.garden.io/core/0.13.50/garden-0.13.50-macos-amd64.tar.gz"
    sha256 "e8f19f6e936374c1154ac7b449f4b18234db8b016dc7629c858ec40709a538ba"
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
