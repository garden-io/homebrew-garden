class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.20"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.20/garden-0.13.20-macos-arm64.tar.gz"
    sha256 "8f17059c69c06d72959e6a214921a2a7a2e5a22fad4663e29f43e794cbe7c472"
  else
    url "https://download.garden.io/core/0.13.20/garden-0.13.20-macos-amd64.tar.gz"
    sha256 "458dfb91313822fe3853afcb69f093225a0ba35b09655da44fc54eefa00e3179"
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
