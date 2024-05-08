class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.30"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.30/garden-0.13.30-macos-arm64.tar.gz"
    sha256 "c56631f3a4bed6a30a8da0f5104bb40a02bdcb5badb005c5ebac89c3d764afc1"
  else
    url "https://download.garden.io/core/0.13.30/garden-0.13.30-macos-amd64.tar.gz"
    sha256 "3e36cfa9027d2857c51f8060d9144cf8732d936ca1583c57c4dbdc67618d5103"
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
