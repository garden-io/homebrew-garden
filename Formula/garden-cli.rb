class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.4/garden-v0.11.4-macos-amd64.tar.gz"
  version "0.11.4"
  sha256 "30d96d8f716a4cee8b3dc97693d87ae6f03d843706bf7de3ba708a3a47053bdc"

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
