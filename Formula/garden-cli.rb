class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.1/garden-v0.11.1-macos-amd64.tar.gz"
  version "0.11.1"
  sha256 "1c0886e30b56059dfdffd30c56a65171fff45aadc666d555eb3f2da58ba666ba"

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
