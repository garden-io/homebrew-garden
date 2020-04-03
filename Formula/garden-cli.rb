class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.11/garden-v0.11.11-macos-amd64.tar.gz"
  version "0.11.11"
  sha256 "a333bf84e4abaa8d26218f00fde569ced36d37433ef9c41a8d58e0330af45d87"

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
