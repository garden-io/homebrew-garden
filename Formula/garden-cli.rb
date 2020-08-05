class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.12.2/garden-v0.12.2-macos-amd64.tar.gz"
  version "0.12.2"
  sha256 "10608f9e4b950f6ab908c1952ee19fb24378082db805734fe7cbcb461fe40e9c"

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
