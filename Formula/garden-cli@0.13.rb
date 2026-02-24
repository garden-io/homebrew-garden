class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.63"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.63/garden-0.13.63-macos-arm64.tar.gz"
    sha256 "e2b96e798ef1e2cba0d64c12610c7f91e775f3e49d0b953f75232f2c68825b7c"
  else
    url "https://download.garden.io/core/0.13.63/garden-0.13.63-macos-amd64.tar.gz"
    sha256 "2948abf15d32db39209532265ddfa9a408e06c074e558deddbbd3a44ce86f982"
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
