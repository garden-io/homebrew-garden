class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-bonsai"

  depends_on "rsync"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-arm64.tar.gz"
    sha256 "a7da9d65b93292387dc556a6dec0f06e176b3b4a85b6cdf98a1cee9ffc218d25"
  else
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-amd64.tar.gz"
    sha256 "02c7bac41574e9a91df35cfadcead23d23183c2c3cf96780139c33becf7cf9e6"
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
