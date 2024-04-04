class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.29"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.29/garden-0.13.29-macos-arm64.tar.gz"
    sha256 "a79bcf68c38e77c52c462c88c1a1088d1052ae1d2ca47be8405de8f6aadbf8b4"
  else
    url "https://download.garden.io/core/0.13.29/garden-0.13.29-macos-amd64.tar.gz"
    sha256 "b13d50c8a1723c7a233940842b21e31a472b7c900d323c94d8b5879bb0b1744d"
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
