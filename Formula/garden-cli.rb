class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.2/garden-v0.11.2-macos-amd64.tar.gz"
  version "0.11.2"
  sha256 "cad8b34bd3de664bee9bae250a0befa0ff74896544030a317c8eafa2babb4ffe"

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
