class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/edge/garden-edge-macos-amd64.tar.gz"
  version "edge"
  sha256 "2933a32f021383f82b6496e4f4e8fb6f81b779966cc5545287ee06e6f3315ba9"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "better_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
