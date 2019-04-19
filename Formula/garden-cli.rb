class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.10/garden-v0.9.10-macos-amd64.tar.gz"
  version "0.9.10"
  sha256 "06fff05a5751f88149b3e44d3bea8f96ce89a9c053375de3421501a258589985"

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
