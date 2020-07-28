class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.12.1/garden-v0.12.1-macos-amd64.tar.gz"
  version "0.12.1"
  sha256 "9c78ce21bf57c48513d08f486012b2eddee1edb74cec99d30ac7a2bcbc809041"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "node_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
