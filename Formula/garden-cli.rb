class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.5/garden-v0.11.5-macos-amd64.tar.gz"
  version "0.11.5"
  sha256 "c1117f07bba7cd220dbe9131c22cc5a0636b10ea335baa2c5dbd2d676d9e7cf5"

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
