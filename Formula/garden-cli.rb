class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.53"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.53/garden-0.13.53-macos-arm64.tar.gz"
    sha256 "f4c183cc24f4b96b056403a9f9d752b255f553914c0321c347afc2d5951f1378"
  else
    url "https://download.garden.io/core/0.13.53/garden-0.13.53-macos-amd64.tar.gz"
    sha256 "bb42d7f4106884a93b49d0d722fd99d181bebe7c4fa8d9aad7a9d4aa934f5015"
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
