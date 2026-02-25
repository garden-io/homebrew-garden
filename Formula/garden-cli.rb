class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.18"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.18/garden-0.14.18-macos-arm64.tar.gz"
    sha256 "d3057a7866601f433a1018bcb44a8dc79f86e290b4e7677e8456bd3f1fe5af0e"
  else
    url "https://download.garden.io/core/0.14.18/garden-0.14.18-macos-amd64.tar.gz"
    sha256 "1bca8b6ac826718d62431e2212f1f9d1d2aa94aefff84b5d8f16a21cb80463a1"
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
