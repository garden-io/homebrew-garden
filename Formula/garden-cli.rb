class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.10/garden-v0.11.10-macos-amd64.tar.gz"
  version "0.11.10"
  sha256 "74f94aec176f3a50fcb0cb6a0804a6d2127af3f18c3190f26e90553538ca5d88"

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
