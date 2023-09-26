class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-bonsai"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-arm64.tar.gz"
    sha256 "a167d08f3303a6f5b5bcf5ba195abc86ed4d6263aacfc04a0733d0ed28eec884"
  else
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-amd64.tar.gz"
    sha256 "02570e223554dfc5b63a59e022ed78a34ac81cd6ac1599500508554e2bcc9b95"
  end

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
