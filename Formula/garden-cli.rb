class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-cedar"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/edge-cedar/garden-edge-cedar-macos-arm64.tar.gz"
    sha256 "c8251152b42dccd1109f0f041729e409c30af259189764caf732d0fa7915dbb2"
  else
    url "https://download.garden.io/core/edge-cedar/garden-edge-cedar-macos-amd64.tar.gz"
    sha256 "fffae51de1c9db033b2273b50d1b2c4ae0dc1d6220f3cf2f06e7e19321f09a40"
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
