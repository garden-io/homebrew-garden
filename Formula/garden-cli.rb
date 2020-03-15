class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.8/garden-v0.11.8-macos-amd64.tar.gz"
  version "0.11.8"
  sha256 "805ce8b02cf10171a861534cdc5c9fb7dcb249ff8c0b6072ee72d34f51b8a387"

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
