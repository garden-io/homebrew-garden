class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.57"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.57/garden-0.13.57-macos-arm64.tar.gz"
    sha256 "5678d683fd428394d279dfc753be0a4e32bfa67ac956c7aaf9458e12fb6ca2de"
  else
    url "https://download.garden.io/core/0.13.57/garden-0.13.57-macos-amd64.tar.gz"
    sha256 "2c5df758208274e32cd692caa99d68019a62dd9aa6c21740e5162294582bb583"
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
