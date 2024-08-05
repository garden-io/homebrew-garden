class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.36"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.36/garden-0.13.36-macos-arm64.tar.gz"
    sha256 "22f8a7a263f80f5fc33e7830375aa93c5f45c6d8c1aaf90b3ea23c8aa59196a5"
  else
    url "https://download.garden.io/core/0.13.36/garden-0.13.36-macos-amd64.tar.gz"
    sha256 "c4688111a9aafe1f12868bb9996f0d2be9dc14ab31a9253125067f4052b6e9c0"
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
