class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.7/garden-v0.11.7-macos-amd64.tar.gz"
  version "0.11.7"
  sha256 "58e3f67939cba78d362a9a722c4903ace1853348e99b048ee71f29fa4b244778"

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
