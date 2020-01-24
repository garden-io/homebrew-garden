class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.1/garden-v0.11.1-macos-amd64.tar.gz"
  version "0.11.1"
  sha256 "870f8807970b2c836d30a962fd4be40e511dbaafcbe1111be49fdcb9c2a94905"

  depends_on "rsync"

  def install
    libexec.install "garden", "*.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
