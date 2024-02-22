class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.26"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.26/garden-0.13.26-macos-arm64.tar.gz"
    sha256 "0d131d52896d63a55ee8406e39465ec1f69201243e3a66a69d04e4d4a227d09e"
  else
    url "https://download.garden.io/core/0.13.26/garden-0.13.26-macos-amd64.tar.gz"
    sha256 "08640eac604d25bd84b6a2d3892c910bb40e17e1daf5d5bc278a4a523fd1e95a"
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
