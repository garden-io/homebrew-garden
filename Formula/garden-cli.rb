class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.17"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.17/garden-0.14.17-macos-arm64.tar.gz"
    sha256 "c3d7bd8be610f0c1a835c00aa3d14f0efeb7d78b5e0309a2bad207489a27363e"
  else
    url "https://download.garden.io/core/0.14.17/garden-0.14.17-macos-amd64.tar.gz"
    sha256 "47917df879c11a7b2e4fb19e6230f21503a159b9c8a5725ab0b82e9d3b6d80ae"
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
