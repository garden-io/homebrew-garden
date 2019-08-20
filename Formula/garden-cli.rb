class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.6/garden-v0.10.6-macos-amd64.tar.gz"
  version "0.10.6"
  sha256 "4be6ab2840cb2e5cf69dac16f2315b7d0204e94ab4568a036cb4fde37028f895"

  depends_on "rsync"

  def install
    libexec.install "garden", "fse.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
