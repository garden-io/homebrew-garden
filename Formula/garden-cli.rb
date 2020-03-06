class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.6/garden-v0.11.6-macos-amd64.tar.gz"
  version "0.11.6"
  sha256 "a6ca8ecbdc9385dffb798f75e2113acd5b7e0c35877d5334b85d0a3cdc71af7f"

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
