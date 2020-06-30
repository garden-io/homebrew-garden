class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.12.0/garden-v0.12.0-macos-amd64.tar.gz"
  version "0.12.0"
  sha256 "dd9022bfa04f7a065e6a7145b801ec7495b2bb41dcf8217928454450cb00e632"

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
