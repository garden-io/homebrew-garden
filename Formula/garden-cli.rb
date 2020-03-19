class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.9/garden-v0.11.9-macos-amd64.tar.gz"
  version "0.11.9"
  sha256 "2f26f62ae4a0cf79fe29fc48e35a87e0e6fb0bdb34151a5538202d8bf84ab8a2"

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
