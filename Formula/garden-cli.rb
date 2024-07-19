class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.35"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.35/garden-0.13.35-macos-arm64.tar.gz"
    sha256 "02edc0552dfe0d6211305d127dd05b0792e4ddcb11e8f7cdf9864fa66f666b4e"
  else
    url "https://download.garden.io/core/0.13.35/garden-0.13.35-macos-amd64.tar.gz"
    sha256 "ba1def6fb4e2cc92c0b5daa4a5ec91794a8e63c3c2acd1e9ab1417f9ea9693c9"
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
