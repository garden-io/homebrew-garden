class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.1/garden-0.13.1-macos-amd64.tar.gz"
  version "0.13.1"
  sha256 "423c67a3d6338b4cec363320b8a32aeb1d976c9c9fb4875ac34564b81104636e"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
