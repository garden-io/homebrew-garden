class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.52"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.52/garden-0.13.52-macos-arm64.tar.gz"
    sha256 "c26a65ece991603e44319646cc8ea16fd5bc463265a3d7d1f253d232d20118c2"
  else
    url "https://download.garden.io/core/0.13.52/garden-0.13.52-macos-amd64.tar.gz"
    sha256 "fddc634e84bae96f83ca9cf6e40eb34268e498e1d52ab775760a467c3e826b2e"
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
