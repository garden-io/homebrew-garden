class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.27"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.27/garden-0.13.27-macos-arm64.tar.gz"
    sha256 "a1654e50ffd46a3b22b7b40f7610ac1ba550415e6c9c5717bbdf5a1f017a0107"
  else
    url "https://download.garden.io/core/0.13.27/garden-0.13.27-macos-amd64.tar.gz"
    sha256 "96f0caf73bac25567b78743b977e200fa6eade20dcfdb92908e2ce07a347783b"
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
