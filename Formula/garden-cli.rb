class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.3/garden-v0.11.3-macos-amd64.tar.gz"
  version "0.11.3"
  sha256 "40e6c261fed568386877b83cf863e09816ec848e0b603c72625fc28af96526f5"

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
